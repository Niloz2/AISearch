<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.net.URL" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Search Results</title>
    <!-- Bootstrap CSS link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <!-- Attaching the Favicon -->
    <link rel="icon" href="AISearchLogo/AISearchWhiteLogo.jpg" type="image/*">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', 'Segoe WP', system-ui, Arial, Sans-Serif;
            -webkit-font-smoothing: antialiased;
            background: url('AISearchLogo/AISearchGifImage.gif') no-repeat center center fixed;
            background-size: cover;
        }

        .content-container {
            position: relative;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for readability */
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }

        .card {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card-body {
            background: linear-gradient(135deg, #f8f9fa, #e9ecef);
            background-size: 200% 200%;
            animation: gradientAnimation 4s ease infinite;
            border-radius: 15px;
        }

        @keyframes gradientAnimation {
            0% {
                background-position: 0% 0%;
            }
            50% {
                background-position: 100% 100%;
            }
            100% {
                background-position: 0% 0%;
            }
        }

        .card-header {
            background-color: #343a40;
            color: #ffffff;
            text-transform: capitalize;
        }

        .card-body a {
            color: #007bff;
            text-decoration: none;
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .card-body a:hover {
            text-decoration: underline;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .stretched-link::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            z-index: 1;
        }

        @media (max-width: 576px) {
            .content-container {
                padding: 10px;
            }

            .card-header, .card-body {
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
    <div class="container content-container">
        <!-- Heading to display the search query -->
        <h1 class="text-center">Learn More About "<%= request.getAttribute("query") %>"</h1>
        <div class="row">
            <% 
            // Retrieve search results from request attribute
            List<String> searchResults = (List<String>) request.getAttribute("searchResults");
            String query = (String) request.getAttribute("query");
            
            // Check if search results exist and are not empty
            if (searchResults != null && !searchResults.isEmpty()) {
                String firstLink = searchResults.get(0); // Get the first link
                
                // Loop through each search result
                for (String result : searchResults) {
                    // Extract domain from the result URL
                    URL url = new URL(result);
                    String domain = url.getHost().startsWith("www.") ? url.getHost().substring(4) : url.getHost();
            %>
                    <!-- Column setup for responsive layout -->
                    <div class="col-12 col-md-6 col-lg-4 mb-3">
                        <!-- Bootstrap card component -->
                        <div class="card h-100">
                            <!-- Card header with domain name -->
                            <div class="card-header">
                                <%= domain %>
                            </div>
                            <!-- Card body with result URL as a link -->
                            <div class="card-body">
                                <h5 class="card-title"><%= query %></h5>
                                <a href="<%= result %>" target="_blank" class="stretched-link"><%= result %></a>
                            </div>
                        </div>
                    </div>
            <% 
                }
            %>
                <!-- JavaScript to open the first link in a new tab -->
                <script>
                    window.open("<%= firstLink %>", "_blank");
                </script>
            <% 
            } else {
            %>
                <!-- JavaScript to redirect to a search engine if no results are found -->
                <script>
                    var query = encodeURIComponent("<%= query %>");
                    var searchEngine = "https://www.google.com/search?q=" + query; // Change to preferred search engine
                    window.open(searchEngine, "_blank");//open the new tab in google
                </script>
            <% 
            } 
            %>
        </div>
    </div>
    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>