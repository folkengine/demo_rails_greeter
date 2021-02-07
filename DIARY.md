# Diary

## init Sat Feb 6 17:53:25 2021

```
$> rails new demo_rails_greeter
$> cd demo_rails_greeter
$> bundler install
$> bin/rails server
```

## Create greet controller

```
$> bin/rails generate controller Greet index --skip-routes
```

Set it as the default route:

`./config/routes.rb`
```ruby
Rails.application.routes.draw do
  root "greet#index"
  get "/greet", to: "greet#index"
end
```

## Get tests to run locally

```
$> bin/rails db:migrate
$> bundle exec rake
```

### Ripples in the pond

In testing an application, as in everything in life, it's all about feedback
loops. You drop a stone in the pond and you watch the ripples flow away from
center. The first layer of these ripples is being able to test it locally.

The next layer is your CI Server. It's there for you to cover serveral
situations.

Is there something in your tests that works for you locally, but
doesn't work anywhere else? For me, there are few sins greater than saying,
'_it works on my machine._' None of the people using our software care if
it works on your machine. They want it to work on their machines. 


## Added [rspec-rails](https://github.com/rspec/rspec-rails)


