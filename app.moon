lapis = require "lapis"
console = require "lapis.console"
import respond_to, capture_errors from require "lapis.application"
csrf = require "lapis.csrf"
web_sanitize = require("web_sanitize")

class extends lapis.Application
  @before_filter =>
    @csrf_token = csrf.generate_token @

  [index: "/"]: =>
    @html ->
      h1 "Hello lapis framework!"
      p "This is a 'hello world'-like application on lapis framework."
      if @session.email
        email = web_sanitize.extract_text(@session.email)
        h2 "Welcome, #{email}"
      else
        a href: @url_for("login"), "Login page"

  [login: "/signin"]: =>
    @html ->
      h1 "Sign in"
      form method: "POST", action: @url_for("user"), ->
        input type: "hidden", name: "csrf_token", value: @csrf_token

        label for: email, "e-mail:"
        input required: true, type: "email", name: "email"

  [user: "/user"]: respond_to {
    POST: capture_errors =>
      csrf.assert_token @
      @session.email = @params.email
      @write redirect_to: @url_for "index"
  }

  "/console": console.make!
