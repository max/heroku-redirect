# heroku-redirect

A simple Rack app to redirect from one app to another on
[Heroku](https://heroku.com).

## Running Locally

```bash
$ git clone git@github.com:max/heroku-redirect.git
$ bundle install
$ echo "REDIRECT_TO=http://example.com" >> .env
$ foreman start
$ curl http://localhost:5000
````

## Running Tests

```bash
$ bundle exec ruby test/web_test.rb
```

## Deploying to Heroku

```bash
$ heroku create
$ heroku config:set REDIRECT_TO=http://example.com
$ git push heroku master
```
