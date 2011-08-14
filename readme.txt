This is just a short readme to roughly describe how to set up your own server.
You will need to roll your own Isle of Everwar server since I am not providing
binaries.  They would just consume the services on my own server.

Since this is not a simple server to install and run, expect to spend some time
just configuring everything.  If you are not familiar with the technologies
listed below, I highly recommend you don't even try to run this server.

Someday perhaps it'll run out of the box, but that's a long way off.

What you'll need:
-----------------
Flex Builder to generate web service client code against your server
Java 6
Union Platform 1.1.0
MySQL 5 Database
Netbeans (recommended for building java server components)
Apache Tomcat (recommended java application server)
Apache2 web server (recommended)

How to run your own:
--------------------
1) Set up a database and configure the beans.xml in gameServices/web/WEB-INF
   and union.xml in gameServerModule accordingly
2) Build and deploy gameServices war to your application server, which will
   initialize the tables in the DB
3) Install Union Platform
4) Build and deploy gameServerModule to Union
5) Open gameClient in Flex Builder, regenerate the web service client code
   to point at your server.  Edit the reactor.connect line in Main.mxml too.
6) Build gameClient and deploy to some directory on your web server
7) Open editor in Flex Builder, regenerate the web service client code to
   point at your server.  Edit the navigateToURL line in RPGEditor.mxml
8) Build editor and deploy to some sensible directory on your web server
9) Go to the editor page on your site to begin building your world!  
   Start with Faelor Landing and Auran Landing.  Those are the only two
   mandatory maps.
10) Once you have at least those two maps built, you can go to the gameClient
    page, register an account, and start playing!

Web Chat:
---------
1) Copy the contents of the webChat folder somewhere on your site
2) Update index.html to connect to your union server
3) Open it in a browser, log in using your game account, and you can
   chat with people in the game!  No Flash needed.


