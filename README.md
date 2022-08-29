# README

# JWT Auth with bycrypt

 Bycrypt function uses an algorithm to hash passwords. because This is important for user security.
 if anyone were to gain access to your database and the passwords are not hashed the user's credentials would be compromised. 
 at least then the password will be protected all time.
  there is all user to use bycrypt gem then the sefty for us. 
  because the password will be digested.
  
   my project done by JWT stands for JSON Web Token. It is a standard for authentication in applications. a successful login, the server sends a JWT to the client as proof of verification. 
   Think of this as the ticket for a user to gain access to gated content or personal content. 
   You should at this point be able to test out a login POST request with a previously created user.
   
  If the password and username are correct the response should provide a JWT token as proof of verification. 
  if not you should hit the error message.


  ## Color Reference

| Color             | Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| Example Color | ![#0a192f](https://via.placeholder.com/10/0a192f?text=+) #0a192f |
| Example Color | ![#f8f8f8](https://via.placeholder.com/10/f8f8f8?text=+) #f8f8f8 |
| Example Color | ![#00b48a](https://via.placeholder.com/10/00b48a?text=+) #00b48a |
| Example Color | ![#00d1a0](https://via.placeholder.com/10/00b48a?text=+) #00d1a0 |




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

Let's run our migration with the following command:
```bash
$ bin/rails db:create

$ bin/rails db:migrate
```



## Add Gem File

```bash
gem "bcrypt"
```
Bootstrap gem File
```bash
 gem 'bootstrap', '~> 5.2.0'
```
Jwt gem File
```bash
 gem 'jwt'
 ```

 
## Installation
    
```bash
bundle install
```
