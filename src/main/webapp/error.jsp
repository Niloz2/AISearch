<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Attaching the Favicon -->
    <link rel="icon" href="AISearchLogo/AISearchWhiteLogo.jpg" type="image/jpg">
    <title>Error</title>
    <style>
        /* Global styles for the body */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light gray background */
            color: #343a40; /* Dark text color */
            margin: 0;
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            height: 100vh; /* Full viewport height */
            /* Background image setup */
            background: url('AISearchLogo/AISearchbackgroundBanner.jpg') no-repeat center center fixed;
            background-size: cover; /* Cover the entire viewport */
        }
        /* Styles for the error container */
        .error-container {
            text-align: center;
            max-width: 600px; /* Maximum width of the container */
            padding: 20px;
            background-color: #ffffff; /* White background */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Light shadow */
        }
        /* Styles for the error heading */
        h1 {
            font-size: 2.5rem; /* Large font size */
            color: #dc3545; /* Red color for emphasis */
            margin-bottom: 10px; /* Space below the heading */
        }
        /* Styles for the error message paragraph */
        p {
            font-size: 1.2rem; /* Medium font size */
            line-height: 1.6; /* Line height for readability */
        }
    </style>
</head>
<body>
    <!-- Error container to center content on the page -->
    <div class="error-container">
        <!-- Main error heading -->
        <h1>Oops! Something went wrong.</h1>
        <!-- Additional error message for users -->
        <p>We are experiencing technical difficulties right now. Please try again later.</p>
    </div>
</body>
</html>
