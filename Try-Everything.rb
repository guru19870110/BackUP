-------------------------------------------------------------------------------------------------------------
There is only one good, knowledge, and one evil, ignorance.
The unexamined life is not worth living.
By all means marry; if you get a good wife, you’ll become happy; if you get a bad one, you’ll become a philosopher.
Education is the kindling of a flame, not the filling of a vessel.
He who is not contented with what he has, would not be contented with what he would like to have.
Sometimes you put walls up not to keep people out, but to see who cares enough to break them down.
When the debate is lost, slander becomes the tool of the loser.
True wisdom comes to each of us when we realize how little we understand about life, ourselves, and the world around us.
The easiest and noblest way is not to be crushing others, but to be improving yourselves.
My friend…care for your psyche…know thyself, for once we know ourselves, we may learn how to care for ourselves.
Think not those faithful who praise all thy words and actions; but those who kindly reprove thy faults.
The only true wisdom is in knowing you know nothing.
It is better to change an opinion than to persist in a wrong one.
Be of good cheer about death, and know this of a truth, that no evil can happen to a good man, either in life or after death.
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-Ubuntu
	sudo : Admin method command line
	apt-get : Package Manager

-Ruby on Rails with Ember.js Integration
	$ rails new ember-spin -d postgresql
	$ cd ember-spin
	$ bundle install
	$ rake db:create
	~ Add this line to my Gemfile:
		gem "ember-cli-rails"
	$ ember new frontend -skip-git
	$ rails generate ember:init
	$ cd frontend
	$ ember install ember-cli-rails-addon
	~ Finally configure the rails routes.rb file like so:
	Rails.application.routes.draw do
		mount_ember_app :frontend, to: "/"
	end

	On your Ember.js project
	$ npm install ember-cli

	After execute these instructions $ sudo rails s

-Git Push
	$ git diff
	$ git status : Git status

	$ git add .
	$ git config --global user.email "you@example.com"
	$ git config --global user.name "Your Name"
	$ git commit -m "Comment sentence."
	$ git push origin master

-Git Clone
	$ git clone URL-Address

-Git Using method
	1: $ git status
	2: $ git commit -m "Comment sentence."
	3: $ git pull
	4: $ git push origin master

-Ubuntu Copy command line
	cp -a /path/from /path/to
	Ex: cp -a Down UP // Copy from Down to UP

-Ubuntu Remove folder command
	$ sudo rm -rf folder name

-Data transfer between Rails and Ember.js
	URL-Address: https://emberigniter.com/modern-bridge-ember-and-rails-5-with-json-api/

-Ruby on Rails
	$ echo 'gem "active_model_serializers", "~> 0.10.2"' >> Gemfile
		This function is to add the 'gem "active_model_serializers", "~> 0.10.2"' content into the Gemfile.

-PostgreSQL URL Address
	https://chadaphone.wordpress.com/2010/11/27/command-line-for-postgresql-in-ubuntu/
	https://hevodata.com/blog/how-to-install-and-use-postgresql-on-ubuntu-16-04/

-Install the PostgreSQL on Ubuntu
	~Ubuntu contains PostgreSQL by default. We can get it by using the apt command.
	$ sudo apt-get update
	$ sudo apt-get install postgresql postgresql-contrib

-About the PostgreSQL
	PostgreSQL manages database access permissions using the concept of roles. Roles can own database objects (for example, tables and funcitons) and can assign privileges on those objects to other roles to control who has access to which objects.
	The default role for PostgreSQL is called "postgres" which was created during installation.
	We need to login to this account to use postgreSQL.
		$ sudo -i -u postgres
		$ psql : This is the interactive terminal for postgreSQL.
		$ \q : This quits psql and takes user back to regular command line.
		$ psql -d postgres : We can connect to a different database by using -d.
	~Since postgre Linux account has all the privileges it can create and delete additional roles.
	We can create and delete roles by these commands.
		$ createuser user_name;
		$ delete user_name;
	~Only superusers and users with CREATEROLE privilege can create a new user.
		$ \du : Command will list out all the existing roles.
	Creating a new Database
		createdb db_name; Ex: createdb company;
		~Normally, the database user who executes this command becomes the owner of the new database.
		However a different owner can be specified via the -O option, if the executing user has appropriate privileges.
		$ sudo -i -u Joe; : We can change the Linux account to company by typing.
	Creating a new tables
		CREATE TABLE Employee(ID int PRIMARY KEY,Name varchar(20),Division varchar(20), City varchar(20), Salary float);
		\d : This command can be used for verification of the table created.
		It lists all the table in the current DataBase.
		\d table_name is used for description of each table.
	Granting Privileges
		Whenever an object is created in a Database, an owner is assigned to it. The owner is usually the one who executed the creation statement. For most kinds of objects, the initial state is that only the owner (or a superuser) can modify or delete the obeject. To allow other roles or users ot use it, privileges or permission must be granted.
			GRANT ALL ON employee TO company:
			REVOKE DELETE FROM comapny;
		The privileges are: SELECT, INSERT, UPDATE, DELETE, TRUNCATE, PEFERENCES, TRIGER, CREATE, CONNECT, TEMPORARY, EXECUTE, USAGE.
	Adding Querying and Deleting Data and Updating Data and Drop Table in Table.
		INSERT INTO Employee values (101,'Ray Alexson','Engineering','California',100000);
		INSERT INTO Employee values(102,'Riley Mason','Marketing','New York',90000);
		INSERT INTO Employee values(103,'Shawn Price','Marketing','New York',11000);
		If we want to enter data into all the columns of the table, we don't need to mention the column names. We just need to keep the order same as the columns in the table
		SELECT * FROM Employee;
		DELETE FROM Employee WHERE Salary >= 100000;
		UPDATE Employee SET Salary = 100000 WHERE Division = ‘Marketing’;
		DROP TABLE Employee;
		DROP TABLE Employee, Employee_salary;
	Alerting the Table columns
		We can add new columns in a table using ADD command with ALTER TABLE.
			ALTER TABLE Employee ADD Work_Experience int;
		We can delete columns in a table using the DROP command with ALTER TABLE.
			ALTER TABLE Employee DROP COLUMN City;
	Dropping a DataBase
		dropdb dbname;
-Mac OS	
	~The most important problem is the setting the enviroment variable.
	-Install the Xcode
		$ xcode-select --install




-Virtual Host Setting.

	------------------------------------------ Apache Configuration -----------------------------------
	~ Guide URL Address : https://lowendbox.com/blog/how-to-setup-apache-virtual-hosts-on-ubuntu-16-04/
	~cd /etc/apache2/sites-available/ : In this directory there is the configure file.
	sudo cp 000-default.conf example1.com.conf : Copy the current conf file with other conf file.
		We have to change the default route to our project route such as ....
			DocumentRoot /var/www/html/Pigbi_laravel/API/public 
				In this route there is our index.php file.
	~Enable new virtual host files and disable the default
		Just run the following command in the putty box to enable example1.com.conf using a2ensite tool.
			sudo a2ensite example.com conf
		Now disable the default virtual host file.
			sudo a2dissite 000-default.conf
		We need to restart apache to take these changes effect. Supply any of the following commands to restart apache
			sudo systemctl restart apache2 & sudo service apache2 restart

	----------------------------------------- MySQL Configuration ---------------------------------------
	Using the root user in MySQL is not default method in Web Application. This is the most important problem.
	Step 1: We have to create the new MySQL user.
			And create the new Database with this user.
	Step 2: We have to add the permission to control current Database.

	------------------------------------------- Google Map ----------------------------------------------
	The google map js file have to set behind with the Javascript function.





-Get the "Select" tag change event using the jQuery.
	$("#tagID").change(function(){
		var a =$(this).val();
		alert(a);
	});