# README
# Survey App

## Overview

Survey App is a simple Ruby on Rails application designed to collect survey responses, calculate individual scores, and display average scores based on the answers provided. The app allows users to answer a set of predefined questions and view their scores as well as the average score of all participants.

## Features

- User-friendly survey form
- Calculation of individual scores based on responses
- Display of average score across all users
- Rails-based backend for handling survey data

## Requirements

- Ruby 3.0.4
- Rails 6.1.7

## Installation

### Prerequisites

Ensure that you have Ruby and Rails installed. If not, you can install Ruby from the [official website](https://www.ruby-lang.org/en/downloads/) and Rails using the following command:

gem install rails -v 6.1.7


### Setup

1. **Clone the Repository**

   Clone the repository to your local machine:

   git clone <repository_url>

2. **Navigate to the Project Directory**

   cd survey_app

3. **Install Dependencies**

   Install the required gems:

   bundle install

4. **Set Up the Database**

   Create the database and run the migrations:

   rails db:create
   rails db:migrate

5. **Start the Rails Server**

   Start the Rails server:

   rails server

6. **Access the Application**

   Open your web browser and visit `http://localhost:3000` to access the survey form.

## Usage

1. **Complete the Survey**

   Answer the survey questions and submit the form.

2. **View Results**

   After submission, you will see your individual score and the average score of all participants.

3. **Take the Survey Again**

   You can retake the survey by navigating to the survey form again.
