# DemoTask
## _An app for geting social networking site data_

DemoTask is an rails application which fetch all of your social networking data in one place.

## Features

- Get all of your social network in one place. 

## Tech

DemoTask uses these technologies.

- [Rails] - To create an mvc structure! version 7.0.2
- [Json] - To give a proper response of api.

## Installation

DemoTask requires [Ruby on Rails] v7.0.2 to run.

Install the dependencies start the server.

```sh
cd DemoTask
bundle install
rails s
```

## gems

DemoTask is currently using following gems for do specific task.

| gem | version | used for |
| ------ | ------ | ------ |
| rest-client | 2.1.0 | to call the social website and get response |
| rspec-rails | 3.11.0 | to test the application |

## Run command

To start the application open terminal in application folder and start the rails server.



```sh
rails s
```
This command sholud started the rails server at default port 3000 and its root url will be localhost:3000.
To access the list of social media data used this command on terminal.

```sh
curl localhost:3000
```


## Test Application

For test the application we use rspec gem.
To install the rspec gem we add this line in our gem file.

```sh
gem 'rspec-rails'
```
After that run this command to terminal to install it.
```sh
bundle install
rails g rspec:install
```

Write the test cases in rspec/controller/social_network_controller.rb file
To run test cases put this command in terminal.
```sh
rspec
```