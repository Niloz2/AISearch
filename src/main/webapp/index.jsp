<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    <meta name="referrer" content="strict-origin">
    <title>AISearch</title>
    <!-- Bootstrap CSS link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <!-- Font Awesome CDN link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Attaching the Favicon -->
    <link rel="icon" href="AISearchLogo/AISearchWhiteLogo.jpg" type="image/jpg">
    <style>
        /* Global styles for body and html */
        body, html {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', 'Segoe WP', system-ui, Arial, Sans-Serif;
            -webkit-font-smoothing: antialiased;
        }

        /* Styles for the main container and app root */
        #root, .App {
            height: 100%;
        }

        /* Modal root position */
        #modal-root {
            position: fixed;
        }

        /* Background image styles */
        #bgimage {
            position: fixed;
            width: 100%;
            height: 100%;
            background: url('AISearchLogo/AISearchGifImage.gif') no-repeat center center;
            background-size: cover;
            animation: fadein 500ms;
        }

        /* Styles for the search box container */
        #fakebox {
            padding-top: 15vh;
            max-width: 760px;
            width: 100%;
            position: relative;
            margin: 0 auto;
            text-align: center;
        }

        /* Wrapper for input with icon */
        .input-icon-wrapper {
            position: relative;
            width: 100%;
        }

        /* Input box styles */
        #inputBox {
            width: 100%;
            padding: 10px 20px 10px 40px; /* Add padding to the left for the icon */
            font-size: 1.2em;
            border-radius: 25px;
        }

        /* Styling for the search icon */
        .input-icon {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #6c757d; /* Icon color */
        }

        /* Styling for the company logo and name */
        #company-logo {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px; /* Adjust margin as needed */
            position: relative; /* Ensure it's positioned relative to the parent */
            z-index: 1000; /* Set a higher z-index to ensure it's above other elements */
        }

        #company-logo img {
            border-radius: 50px;
            margin-right: 10px;
            width: 60px; /* Ensure the width matches the image dimensions */
            height: auto; /* Automatically adjusts height */
            margin-bottom: 20px;
        }

        /* Media query for smaller screens */
        @media only screen and (max-height: 260px) {
            #fakebox {
                opacity: 0; /* Hide fakebox on smaller screens */
            }
        }

        /* Fade-in animation */
        @keyframes fadein {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
    <!-- Background image div -->
    <div id="bgimage"></div>
    
    <!-- Main content container -->
    <div id="fakebox" class="container">
        <!-- Company logo and name -->
        <div id="company-logo">
            <img src="AISearchLogo/AISearchWhiteLogo.jpg" alt="AISearch Logo">
            <h1 class="text-primary">AISearch</h1>
        </div>
        
        <!-- Search form -->
        <form action="SearchServlet" method="post" class="row g-2">
            <div class="col-12 col-md-9 mx-auto">
                <!-- Input group with search icon -->
                <div class="input-icon-wrapper">
                    <i class="fas fa-search input-icon"></i>
                    <input id="inputBox" type="text" name="query" class="form-control" placeholder="Enter your search query" required>
                </div>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
