This repo contains the starter code for my Pluralight Course WPF MVVM In Depth http://www.pluralsight.com/courses/wpf-mvvm-in-depth.

To create the DB that the code depends on, create an empty database in your default SQL Server instance,
and then open and execute the script ZzzDatabaseGen.sql. If you only have SQL Express installed or choose to create the 
database there, you will have to change the connection string in the app.config file for the app to point to 
.\SQLEXPRESS as the server name instead of just "."