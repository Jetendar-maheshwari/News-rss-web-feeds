# Web Feed Aggregator

This web application is designed to collect various web feeds from different media providers and display them in a common interface. It allows users to stay up-to-date with the latest news from different channels. The application is built using core PHP for the backend, cURL PHP for easy communication, Bootstrap for designing and responsiveness, and utilizes REST API, JavaScript, and AJAX for seamless data exchange. The data is stored in a MySQL database.

## Features

- **Web Feed Collection:** The application fetches and stores news feeds from different channels without any classifications.
- **CRUD Operations:** Allows users to Create, Read, Update, and Delete news channels.
- **Bootstrap Design:** Ensures a responsive and visually appealing user interface.
- **REST API:** Facilitates data exchange between the web application and other systems.
- **Automatic Feed Cleanup:** Deletes old news feeds to keep the database up-to-date.

## Folder Structure

|-- database_rss_project
|-- database
|-- database_project.sql
|-- rest_Api
|-- Api.php
|-- test_api.php
|-- source
|-- images
|-- other project-related files
|-- action.php

## Installation

### Database Setup:

1. Import the `database_project.sql` file into your MySQL database.
2. Update the database connection details in the `Api.php` file.

### Web Server:

1. Deploy the project on a web server (e.g., Apache).

### Configure API Endpoint:

1. Update the API endpoint in the `script.js` and `fetch.php` files.

### Access the Application:

1. Open the main page (e.g., `main.html`) in a web browser.

## Usage

- **Adding Channels:** Click the "Add" button to add new news channels.
- **Updating Channels:** Click the "Edit" button to update the details of existing channels.
- **Deleting Channels:** Click the "Delete" button to remove a news channel.
- **Refreshing Feeds:** Click the "Refresh" button to fetch the latest news feeds from all channels.
- **Viewing News Feeds:** Click the "View News" button to see the latest news feeds in a separate page.

## Overview

- **main.html:** The main page for the RSS feed aggregator.

### Source Files

- **insert_feed.php:** Handles the insertion of new RSS feeds into the database.
- **fetch_feed.php:** Retrieves RSS feed data from the database.
- **fetch.php:** Provides a simple API for fetching RSS feed data.
- **action.php:** Manages API requests and database interactions.
- **script.js:** Handles user interactions and makes AJAX calls.

## Database Configuration

To use the RSS Feed Aggregator, you need to configure your database settings. Follow these steps:

1. Open `Api.php`.
2. Locate the database configuration section.
3. Update the `$servername`, `$username`, `$password`, and `$dbname` variables with your database credentials.

## Setup

1. Clone the repository.
2. Configure your database settings in `Api.php`.
3. Run the project on a PHP-enabled server.

## Usage

- Access `main.html` to use the RSS feed aggregator.
- Insert new feeds using the provided form.
- View and manage inserted feeds through the interface.

## Contributing

If you want to contribute or report issues, feel free to create a pull request or open an issue.

## Contributing

Feel free to contribute to the project by opening issues or submitting pull requests.
