# To-Do App Backend

This To-Do App Backend is a web application that serves as the backend for a To-Do management system. It provides an API built with Sinatra and Active Record, designed to efficiently manage tasks and categories. This README will guide you through the setup, features, and usage of this application.

## Features

- Task Management: Create, read, update, and delete tasks.
- Category Management: Create, read, and delete categories.
- One-to-Many Relationship: Tasks belong to categories, and each category can have multiple tasks.
- RESTful API: Follows RESTful conventions with well-defined routes for CRUD operations.
- Ruby & ActiveRecord Backend: Utilizes Ruby and ActiveRecord to interact with a database.
- State Management: Proper state management in the frontend using setState to reflect changes after API requests.
- JSON Data: JSON data is passed from the backend to the frontend for related associations.

## Getting Started with To-Do App Backend

This project serves as the backend for the To-Do App, which is built using Sinatra and Active Record.

### Setup

1. Clone this repository to your local machine.

2. Install the required gems using:

   ```console
   $ bundle install
   ```

3. Start the backend server with:

    ```console
    $ bundle exec rake server
    ```

    This will run your server on port
    [http://localhost:9292](http://localhost:9292).

### Frontend Setup

1. Clone this repository: [for link]: https://github.com/avikdal/my-app-frontend

2. Navigate to the project directory in your terminal.

3. Run `npm install` to install the necessary dependencies.

4. Start the development server using `npm start`.
      - Access the [http://localhost:3000](http://localhost:3000) URL in your browser to use To-Do App Name.