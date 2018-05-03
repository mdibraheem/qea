# README #


### What is this repository for? ###
This is an assessment for potential Quint Events developers

### How do I get set up? ###
* Fork this repository
* Feel free to edit the config/database.yml file to make it work on your machine
* Run ``` rails db:setup ```
* Run rails s and go to localhost:3000 to see if your app if running

### Important Information ###
  1. There is already an admin section for adding/editing packages and events.  To view this go to localhost:3000/admin/events or /admin/packages
  2. The most important part of this assessment is the functionality not the styling.  It's not important to get the styling just right when you are adding to the views

### Complete the following Tasks ###
1. Add an association on packages and events.
    * Events have many packages, and packages have one event
2. On the package pages in the admin section *(/admin/packages)*. Provide a dropdown showing all the events.  You should be able to select an event and then have that package be associated with that event, using the association you created in step #2.  
    * This includes information on the index page, the form partial, and the show page.
3. Add a field on the package table called description.  This represents a short description of the package.
    * After you do this, make sure to add a description to the views in the admin section so that you can edit and view this field.
4. On the event show page replace the placeholder below the Packages to include information about the packages.
    * Use the provided mockup to show all of the packages for that particular event.  
    * For each package show the name and description
5. In the admin section at *admin/events*, make the events sortable via drag and drop.  Then display the events in that order on the front end on the home page.  
    * You may use any frontend library to do drag and drop but **do not** use any rails gems to handle this server side.
6. Write a test for the functionality for sorting events.  Minitest is already setup, but feel free to use whatever test library you prefer.
