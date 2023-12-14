# Web Development in a Nutshell

## What is a web application?
Broadly speaking a "web application is software that runs in your web browser" (https://aws.amazon.com/what-is/web-application/)

Browsers *run* these applications by making requests to a server and processing the responses from the server and rendering them on your machine. There are many technologies that are involved even in web application (e.g. HTML, CSS, HTTP, web servers, backend code) and we are going to cover some of them in this workshop.

For the most part a web application is divided in two parts: a client-side and server-side:
* The client-side part (also known as front-end) is what the browser renders and it include the HTML content of the page as well as the CSS to style the page.

* The server-side part (also known as back-end) is the code that produces the HTML/CSS that the browser will render. The code on the server-side can be as simple as a string with the HTML/CSS or a piece of code that fetches information from a database and builds the HTML/CSS with the results.

The browser communicates with the web server via a protocol known as HTTP. HTTP is the "language" that the browser uses to communicate with another machine (a web server) and requests web pages or passes information to the server (e.g. when you login to a web site your browser passes your user name and password to the server).

```
  [browser]                                   [web server]
     | ---------> 1. HTTP GET ------------------> |
     |            http://somewhere.com/hello      |
     |                                            | 2. Receives the HTTP request
     |                                            | 3. Builds an HTML page and
     |                                            |    sends it back to the browser
     | <----------------------------------------- |
     | 4. Renders the HTML page
     |    to the user
     |
```

We'll dive into the details of HTTP at a later point, but to get started let's looks closely at HTML first.


## hello_world.html

HTML stands for [Hypertext Markup Language](https://developer.mozilla.org/en-US/docs/Web/HTML) and is the language that we use to build web pages that the browser can render.

Let's start by looking at a very basic web page with HTML:

```
<html>
  <head>
    <title>Hello</title>
  </head>
  <body>
    <h1>Hello World</h1>
    <p>This is my first web page</p>
  </body>
</html>
```

Notice how it has some sections (e.g. `head` and `body`) and some other elements surrounded by angle backets (e.g. `<h1>` and `<p>`).

Create a file on your computer with the content above and save that with the name `hello-world.html`. Now, open your browser and open the file that you just created.





There are many technologies involved in a web application including the language to create web pages

(HTML), style them (CSS), or add dynamic behavior to them (JavaScript),



## HTTP

You've probably have seen that links on the web are usually something like `http://some-server/something-else` -- that's what tell the browser that we want to use H



Website or web application?
A website is typical a site that only delivers static information, whereas a web applications have interactive user elements.
Web application vs native app
“Unlike web apps, native or mobile apps are downloaded by the user to their mobile device, usually through app stores.”

Reference: https://aws.amazon.com/what-is/web-application/




## Required software
For this workshop you'll need to install

* Visual Studio Code (https://code.visualstudio.com/)
* Docker (https://www.docker.com/)

We'll use Docker to download a container with Ruby installed on it. If you have Ruby already installed on your machine (https://www.ruby-lang.org/en/) you technically don't need Docker.

You can check if Ruby is already installed on your machine by running a command like this:

```
ruby --version

  # Should display something like
  # ruby 3.1.0p0 (2021-12-25 revision fb4df44d16) [x86_64-darwin22]
```

## Getting started
First install the required software indicated in the previous section.

Then, if you have a GitHub account go to https://github.com/hectorcorrea/webdev-nutshell/ and clone the repository

```
git clone https://github.com/hectorcorrea/webdev-nutshell.git

  # Should display something like
  # Cloning into 'webdev-nutshell'...
  # remote: Enumerating objects: 41, done.
  # ...
  # Unpacking objects: 100% (41/41), done.
```

If you don't have a GitHub account download this file https://github.com/hectorcorrea/webdev-nutshell/archive/refs/heads/main.zip and unzip it on your machine.
