Arcade Cabinet Sinatra CRUD / MVC Application

This application acts as a database manager with full CRUD capabilities and basic user authorization.  There are several quick steps necessary to begin using the app:

Usage

To begin, open up the project repository in your development environment.  Ensure you are in the correct directory by entering:

cd arcade_cabinet

Once here, enter the folling into your terminal:

bundle install

This will install all necessary dependencies from the Gemfile

To seed some preliminary information into the database, enter the folling into your terminal:

rake db:seed

From here, you are ready to begin using the arcade_cabinet application.  Run Shotgun by entering the following in your terminal:

shotgun

once shotgun is running, you can navigate to the dedicated port (http://localhost:9393/) and follow the on-screen prompts and links to navigate the application.

User Info

User security is set up in a hierarchical format.  The only user that has access to edit and delete an object is the user that initially created it.  To gain access to ALL priveleges (full CRUD capability for every object), you must use the admin user account:

username: admin
password: admin

You can also use the application as a guest, but will have read-only access to all objects.

Contribution
All collaborations are welcome! I plan to continue my work on this project in order to add features, and am always open to new ideas. You can navigate to the following repository on GitHub for pull requests and bug reports:

https://github.com/JTheoMitr/arcade_cabinet

License
This application is open source and available under terms designated by the MIT License:

https://opensource.org/licenses/MIT