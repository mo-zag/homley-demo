# How to run the application

*Download git repo to your local machine*

Please make sure you have downloaded RVM with Ruby ruby 3.1.3 [RVM](https://help.dreamhost.com/hc/en-us/articles/217185247-Ruby-Version-Manager-RVM) and all dependencies.

Run `Bundle install`

run `touch .env` Or create .env file

add these varaibles into .env

`DATABASE_USERNAME=database_username`

`DATABASE_PASSWORD=database_password`

Run `rails db:create`

Run `rails db:migrate`

Run `rails s`


