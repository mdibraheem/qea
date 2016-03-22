# README #


### What is this repository for? ###
This is an assessment for potential Quint Events developers

### How do I get set up? ###

* Fork this repository to your local machine
* Feel free to edit the config/database.yml file to make it work on your machine
* Run the following commands to set up your DB
    1. ```rake db:create```
    2. ```rake db:migrate```
    3. ```rake db:seed```
* Run rails s and go to localhost:3000 to see if your app if running

### Important Information ###
  1. There is already an admin section for adding/editing packages and events.  To view this go to localhost:3000/admin/events or /admin/packages
  2. The most important part of this assessment is the functionality not the styling.  It's not important to get the styling just right when you are adding to the views

### Complete the following Tasks ###
1. On the root page, organize the events in order of the starting date.  Do this in the events controller.
2. On the root page, add a column to the events table called 'Days Until Start'.  This will show how many days are left until the event starts.  However, if the event has already passed the table should say 'The event has passed'.
    * Use the provided mockup to see what it should look like.
3. Add an association on packages and events.
    * Events have many packages, and packages have one event
4. On the package pages in the admin section *(/admin/packages)*. Provide a dropdown showing all the events.  You should be able to select an event and then have that package be associated with that event, using the association you created in step #3.  
    * This includes information on the index page, the form partial, and the show page.
5. Add a field on the package table called description.  This should be in text format.  This represents a short description of the package.
    * After you do this, make sure to add a description to the views in the admin section.  This includes information on the index page, the form partial, and the show page.
6. On the event show page replace the placeholder below the Packages to include information about the packages.
    * Use the provided mockup to show all of the packages for that particular event.  
    * For each package show the name and description
7. On the right side of the event show page, create a form for an InfoForm.  This should post to the InfoFormController on the create action.
    * You will have to edit the routes.rb file to allow for this
    * The create action should add the InfoForm to the database
    * After adding the InfoForm to the DB, redirect back to the home page