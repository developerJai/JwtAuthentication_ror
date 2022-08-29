# README



# Secure rails application using JWT authentication(JSON Web Token)

JSON Web Token is a proposed Internet standard for creating data with optional signature and/or optional encryption whose payload holds JSON that asserts some number of claims. The tokens are signed either using a private secret or a public/private key


## Required dependencies:

- Ruby is installed (v 3.0.0)

- Rails is installed (v 7.0.3)

- MySQL is installed

- Git is installed

- GitHub account is created


## Major steps are followed to setup:

- Setup a new Rails app

- Database configuration setup (using MySQL)

- Initialize a local repository using git

- gitignore file created to add configuration.yml

- configuration.yml file created to initialize environment variables

- Create a new remote repository using GitHub

- Change README.md and documentation added

- Code Commited and Pushed to GitHub repository


## Create configuration.yml to setup required environment variables

* Go to the config directory
* Create a new file with name configuration.yml


## Required variables to define in configuration.yml

Here are the variables we need to define in this file:

JWT_DB_DEVELOPMENT: development_db_name

JWT_DB_DEVELOPMENT_USERNAME: development_db_username

JWT_DB_DEVELOPMENT_PASSWORD: development_db_password

JWT_DB_PRODUCTION: production_db_name_xxx

JWT_DB_PRODUCTION_USERNAME: production_db_username_xxx

JWT_DB_PRODUCTION_PASSWORD: production_db_password_xxx

JWT_DB_TEST: test_db_name



## Run Locally

Start Project 
```bash
$  rails new jwt -d mysql
  ```
After you create the jwt application,
Go to the project directory

```bash
 $ cd jwt
```
Start server

```bash
 $ rails server
  or
 $ rails s
```


Create Controller 

```bash
$ rails g controller users index new show edit
```

Create Model
```bash
$ rails g model email password_digest
```


## Add Gem File

```bash
gem "bcrypt"
```
Jwt gem File
```bash
 gem 'jwt'
 ```

 
## Installation
    
```bash
bundle install
```
