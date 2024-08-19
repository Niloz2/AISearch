package com.SearchServlet;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handle POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the search query from the request
        String query = request.getParameter("query");

        // Retrieve search results based on the query
        List<String> searchResults = getSearchResults(query);

        // Set query and search results as attributes to forward to results.jsp
        request.setAttribute("query", query);
        request.setAttribute("searchResults", searchResults);
        request.getRequestDispatcher("results.jsp").forward(request, response);
    }

    // Method to retrieve search results from Bing
    private List<String> getSearchResults(String query) throws IOException {
        List<String> results = new ArrayList<>();

        // Construct Bing search URL with encoded query
        String searchUrl = "https://www.bing.com/search?q=" + URLEncoder.encode(query, StandardCharsets.UTF_8.toString());

        // Connect to Bing search URL and retrieve the document
        Document doc = Jsoup.connect(searchUrl).userAgent("Mozilla/5.0").get();

        // Select all search result elements (typically <li> tags with class "b_algo")
        Elements elements = doc.select("li.b_algo");

        // Iterate through each search result element
        for (Element element : elements) {
            // Select the link element within <h2> tag
            Element linkElement = element.selectFirst("h2 > a");

            // If link element is found, retrieve its href attribute (URL)
            if (linkElement != null) {
                String link = linkElement.attr("href");
                results.add(link); // Add the URL to the results list
            }
        }
        return results; // Return the list of search result URLs
    }
}
