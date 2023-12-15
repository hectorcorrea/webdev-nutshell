# Web Development in a Nutshell

## What is a web application?
Broadly speaking a "web application is software that runs in your web browser" (https://aws.amazon.com/what-is/web-application/)

Browsers *run* these applications by making requests to a server, processing the responses from the server, and rendering them on your machine.

There are many technologies that are involved in a web application (e.g. HTML, CSS, HTTP, web servers, backend code) and each of these technologies can be a workshop of their own, but the idea of this workshop is to give you a *high level* overview of how these technologies fit on the overall picture and how they interact with each other.

For the most part a web application is divided in two parts: client-side and server-side:

* The client-side (also known as front-end) is what the browser renders and it includes the HTML content of the page as well as the CSS to style it.

* The server-side (also known as back-end) is the code that produces the HTML that the browser renders. The code on the server-side can be as simple as a text file with the HTML or a complex piece of code that fetches information from a database and builds the HTML with the results.

The browser communicates with the web server via a protocol known as HTTP. When you make a request to visit a website the communication loop between your browser and the web server looks more or less as the one shown in the diagram below:

```
  [browser]                     [web server]
     |                               |
     | --> http://somewhere.com ---> |
     |     1. HTTP GET               |
     |                               | 2. Receives the HTTP request
     |                               | 3. Builds an HTML page and
     |                               |    sends it back to the
     |                               |    browser
     | <-----------------------------|
     | 4. Renders the HTML page      |
     |    to the user                |
     |                               |
```

We'll dive into the details of HTTP at a later point, but to get started let's look closely at HTML first.


## HTML

HTML stands for [Hypertext Markup Language](https://developer.mozilla.org/en-US/docs/Web/HTML) and is the language that we use to build web pages that the browser renders.

Below is an example of a very basic web page with HTML:

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

Notice how it has some sections (e.g. `html`, `head` and `body`) and some other elements (e.g. `<h1>` and `<p>`) surrounded by angle backets.

Create a file on your computer with the content above and save that with the name `hello-world.html`. Now, launch your browser and open the file `hello-world.html` file that you just created.

The `<head>` section is where we define the metadata of the page. In the previous example we set the title which is how your browser will identity the page within your browser tabs. Go ahead and change the title of your page from `Hello` to `Hola` in your `hello-world.html` file, save it, and refresh your browser. You should see the new title.

The `<body>` section is the actual content that will be diplayed to the user. Inside the `<body>` section we can add many different kind of HTML elements: paragraphs, divs, tables, images, forms, input boxes, links, buttons, and many more.

### HTML elements

Most of the elements inside the `<body>` section of an HTML page can be repeated, for example you can have many paragraphs (`<p>`), many headers (`<h2>`), or many divs (`<div>`).

Some of these elements can also be nested. For example you can have a `<div>` with many paragraphs `<p>`. A paragraph can contain many spans (`<span>`), bold tags (`<b>`), or italic tags (`<i>`).

Most of the HTML elements on a page have an open and a close tag, for example `<p>` to indicate the beginning of a paragraph and `</p>` to end it.

The anchor tag (`<a>`) is a special element because this element allows us to create links to other web pages.

Below is a fancier version of our previous page. Create a new file `hello-world-fancy.html` with the content below and open it in your browser. Notice how there is text in **bold**, *italic*, a link to another page, and an even an image.

```
<html>
  <head>
    <title>Hello (fancy)</title>
  </head>
  <body>
    <h1>Hello World (fancy edition)</h1>
    <div>
      <p>This is my first web page</p>
      <p>And it has many paragraphs</p>
      <p>
        This paragraph is so fancy it even has text
        in <b>bold</b> and <i>italics</i>.
      </p>
      <p class="important-paragraph">
        This paragraph is very important.
      </p>
      <p>
        We even have a <a href="hello-world.html">link to our original hello-world page</a>.
      </p>
      <p>
        This paragraph even has a <button id="do-nothing-button">button</button> that does nothing</p>
      </p>
      <p class="important-paragraph">
        This paragraph is also very important.
      </p>
      <!-- this is a comment,
        the browser ignores it -->
      <p>
        Links can also point to other websites too, for example to
        <a href="https://en.wikipedia.org/wiki/HTML" target="_blank">Wikipedia</a>
      </p>
    </div>
    <div>
        <p>And here is more content and a photo<p>
        <img src="./public/chicago-street-art.jpg" alt="Chicago street art"/>
    </div>
    <footer>
      This is the footer of the page.
    </footer>
  </body>
</html>
```

The [Mozilla web site](https://developer.mozilla.org/en-US/docs/Web/HTML) has a wealth of information to understand HTML and how to structure a web page.

HTML is what defines the *content* and the *structure* of a web page, but to style a page we use an additional language: CSS.

## CSS

CSS stands for [Cascading Style Sheets](https://developer.mozilla.org/en-US/docs/Web/CSS) and it's an additional language that we use inside an HTML page. As the name implies, we use CSS to *style* a web page, that is to change the color of the elements, their margins, how they are aligned on the page (e.g. to the left, to the right), the fonts to use, and many more properties.

To define a CSS inside an HTML page we use the `<style>` tag inside the `<head>` section of the page.

Let's change the style of some of the elements of our previous page. Replace the `<head>...</head>` section of the `hello-world-fancy.html` file that you created before with the following text:

```
  <head>
    <title>Hello (fancy with CSS)</title>
    <style>
      h1 {
        background-color: orange;
      }
      div {
        margin-left: 100px;
      }
      p {
        font-family: 'Courier New', Courier, monospace;
      }
      img {
        border: 2px solid black;
        box-shadow: 10px 10px orange;
      }
      footer {
        color: gray;
      }
    </style>
  </head>
```

Refresh the `hello-world-fancy.html` file in your browser. Notice how the header now has an orange background, the text is using a different font, the image has a drop shadow, and the footer is grayed out.

All of these changes happened by just changing adding the CSS definitions under the `<style>` section of the page. Notice that we did not touch the HTML content inside the `<body>` at all.


### CSS - selectors

In our previous example we defined a CSS style that applied to *all* paragraphs:

```
p {
  font-family: 'Courier New', Courier, monospace;
}
```

But we can be more specific and define an style that applies only to those elements that have the *class attribute* set to `important-paragraph`. For example, let's add the following style anywhere inside the `<style>...</style>` section of a page:

```
.important-paragraph {
  color: red;
  font-style: italic;
}
```

Now, when we refresh the page we will see some paragraphs in red but not others. If you look closely at the HTML of our `hello-world-fancy.html` page you'll notice that those paragraphs have the class attribute set.

We could also add an even more specific style that will target *only* the one HTML element that has the *id attribute* set to `do-nothing-button`. Let's add the following style to our page (again, put this style anywhere inside the `<style>...</style>` section of a page):

```
#do-nothing-button {
  padding: .375rem .75rem;
  font-size: 1rem;
  line-height: 1.5;
  border-radius: .25rem;
  color: #fff;
  background-color: #007bff;
  border-color: #007bff;
}
```

Refresh the page and notice how our button looks different.

This ability to target different elements on our styles is known as CSS Selectors and it's very powerful. The Mozilla page on [CSS Selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors) has information of many kind of selectors that you can use in your CSS.


### CSS - layouts

TBD: https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout


### CSS - using an external file
In our previous examples we inserted the CSS for our page right on the `<head>...</head>` section of the HTML page. Another common way to insert CSS inside a page is to *reference an external file* that has the CSS that we would normally put in the `<style>...</style>` section. For example, let's replace the `<head>...</head>` section of our `hello-world-fancy.html` with the following content:

```
  <head>
    <title>Hello (fancy with CSS)</title>
    <link href="https://hectorcorrea.com/demos/webdev-nutshell/mcss.css" rel="stylesheet" />
  </head>
```

Notice how we don't have a `<style>...</style>` section anymore, instead we have `<link>` element that points to a CSS file that lives somewhere else. Refresh the `hello-world-fancy.html` file in your browser and notice how the formatting has changed again, this time using the CSS defined in the external `mcss.css` file.

The styles defined in the `mcss.css` file were created by Mike Mai and you can [read more about it on his web site](https://mikemai.net/mcss/). Be aware that this file uses many advanced features of CSS and it's well beyond what we cover on this workshop.


## Leaving file:// behind

If you look at the address bar in your browser while you have the `hello_world.html` loaded you'll notice that it says something along the lines of `file:///something/.../hello-world.html`.

The `file://` at the beginning of the URL indicates that the browser is accessing this file via the "file protocol". However, when you visit a website, say https://wikipedia.org, you'll notice that the URL will start with `http://` (or `https://`) rather than `file://`.

The file protocol is fine for loading simple HTML pages from our local disk, but for web development we use the HTTP protocol which allows us to load HTML pages from remote servers. In the example above the URL `https://wikipedia.org` tells the browser to fetch the Wikipedia home page via the network (rather than fetching it from a file on our local disk.)


## HTTP

HTTP stands for [Hypertext Transfer Protocol](https://developer.mozilla.org/en-US/docs/Web/HTTP) and it's a network protocol that the browser uses to communicate with other servers.

> Note: HTTPS is the encrypted version of HTTP, the "S" stands for Secure.
> For the purposes of this workshop they are interchangeable.

When we visit a site, say Wikipedia, our browser issues an HTTP GET request to fetch a page from `wikipedia.org`. When the `wikipedia.org` server receives our request it builds an HTML page and sends it back to our browser (as an HTTP response). Our browser then parses the HTML and renders it for us to view. The following diagram shows this sequence:

```
  [our browser]              [wikipedia server]
     |                              |
     | --> http://wikipedia.org --> |
     |     1. HTTP GET              |
     |                              | 2. Receives the HTTP request
     |                              | 3. Builds an HTML page and
     |                              |    sends it back to the
     |                              |    browser
     | <--------------------------- |
     | 4. Renders the HTML page     |
     |    to the user               |
     |                              |
```

We can think of HTTP as the glue between the client-side and the server-side of an application since this is the language that connects the two.

## Server-side

So far all our examples have shown the client-side of a web application. In the next section we are going to dive into the server-side of the application.

The code for the server side can be written in many diffent kind of languages: Ruby, Python, PHP, Java, C#, Go, and others.

For this workshop we are going to use Ruby.

The server-side of a web application receives the requests from the client (e.g. I want to view the content of this page), figures out what is the content appropriated for that request, builds an HTML page with that content, and sends it back to the browser. On the client-side the browser (as we have seen) knows how to render an HTML page.


## Installing Ruby

Since we are going to use Ruby for our server-side code let's start by installing Ruby. We are going to use a Docker download a container with Ruby already preinstalled.

    Note: This section of the workshop is *by far* the more complicated part
    because it requires that you to have Docker running, click a bunch of
    options within Visual Studio Code, and hope everything install correctly.
    But once we get this going it will be fun again.

From within Visual Studio Code (VS Code) press `Option-Command-O` (Mac) or `Alt-Command-O` (Windows) to open the Remote Window menu. From this menu pick the option "Reopen in Container" then "From Dockerfile", and then click "OK" (no need to select any features).

At this point VS Code will re-launch and it will create the Docker container with Ruby. This will take a minute or two the very first time you do it (it'll be a bit faster after that). You can click on the "Starting Dev Container (show log)" link to view the progress.

Once it finishes click on the "Terminal" menu and select "New Terminal". This will open a "terminal" window at the bottom of the screen and it show a prompt that will look like this:

```
root@1a2b3c4d:/workspaces/webdev-nutshell#
```

The number `1a2b3c4d` will be different on your installation but that's OK.

Once you are on this prompt type `ruby --version` and you should see that Ruby 3.0 is installed on this container:

```
root@1a2b3c4d:/workspaces/webdev-nutshell# ruby --version
ruby 3.0.6p216 (2023-03-30 revision 23a532679b) [x86_64-linux]
```

On this same prompt run the command `ruby hello.rb` and look at the output. You can see the code for `hello.rb` file from VS Code, it will be a single line of code:

```
puts "Hello world from a Ruby program"
```

Then look at the code of `demo1.rb`, what do you think this one does? Run it via `ruby demo1.rb` to find out.

If you are new to Ruby the [Ruby in Twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/) guide might be a good place for you to start and learn a little it about the language.


## Server-side code with Ruby

The goal of this workshop is to show you how to build a web application using Ruby. To do this we are going to install two additional Ruby tools (`gems` in the Ruby parlance):

* [Sinatra](https://sinatrarb.com/) - a small library that makes writting web applications in Ruby easier
* [WEBrick](https://github.com/ruby/webrick) - a tiny small web server for Ruby that handles some of the HTTP plumbing that is required in a web application

To install Sinatra run the following command from your VS Code Terminal window:

```
gem install sinatra

  > You'll see the following output
  > Fetching ...
  > Fetching sinatra-3.1.0.gem
  > Fetching rack-2.2.8.gem
  > Successfully installed rack-2.2.8
  > Successfully installed sinatra-3.1.0
  > 6 gems installed
```

and then to install WEBrick run the following command on your Terminal window:

```
gem install webrick

  > You'll see the following output
  > Fetching webrick-1.8.1.gem
  > Successfully installed webrick-1.8.1
  > 1 gem installed
```

Now that we have these two `gems` installed we can run our first web application in Ruby:

```
ruby webdemo1.rb

  > You'll see the following output
  > [2023-12-15 01:30:52] INFO  WEBrick 1.8.1
  > [2023-12-15 01:30:52] INFO  ruby 3.0.6 (2023-03-30) [x86_64-linux]
  > == Sinatra (v3.1.0) has taken the stage on 3000 for development with backup from WEBrick
  > [2023-12-15 01:30:52] INFO  WEBrick::HTTPServer#start: pid=7584 port=3000
```

now that the Ruby web application is running we can access with our browser by going to http://localhost:3000/ - notice that this time we are using an `http://` URL rather than a `file://` URL.

This application is rather underwhelming but it is showing a Ruby program is accepting HTTP connections from a browser and returning a valid HTML that the browser can render. You can view the code for this tiny application in `webdemo1.rb`:

```
require "sinatra"

set :port, 3000
set :bind, '0.0.0.0','localhost'
disable :strict_paths

get("/") do
  # Render a hard-coded HTML string
  html = "<h1>Welcome to your first web app</h1><p>You are on your way to beat Google :)</h1>"
  return html
end
```

The important thing about this application is that we could put it on a different server (rather than on our own laptop) and make it available for the world to access, say via a URL like `http://my-first-ruby-application.org`

For now, type `CTRL-C` from your terminal to shut down this application. You'll see the following output in the terminal:

```
^C== Sinatra has ended his set (crowd applauds)
[2023-12-15 02:01:57] INFO  going to shutdown ...
[2023-12-15 02:01:57] INFO  WEBrick::HTTPServer#start done.
```

and if you refresh your browser pointing to http://localhost:3000/ your browser will report that it cannot connect to it anymore, which makes sense, we just shut it down.

## Sinatra views

Our previous example has a hard-code string with HTML right in our Ruby code. This is OK for a simple demo but not very convenient in the long run. Sinatra allows us to move our HTML outside the Ruby code into an ERB file, which is similar to an HTML file but with some extra features.

If we look at the code in `webdemo2.rb` you'll notice that in addition to having the HTML hard-coded right there and then there is a second block of code that loads an ERB view called `fancy.erb`:

```
get("/fancy") do
  # Render the HTML on ./views/fancy.erb
  erb(:fancy)
end
```

By default the ERB file is expected to be found in the `./views` folder. In fact you can open this file in VS Code and you'll notice that is an almost identical copy to the `hello_world_fancy.html` that we used at the beginning of the workshop.

We can run this new demo by running `ruby webdemo2.rb` from the Terminal window and pointing our browser again to http://localhost:3000

Notice how it looks just like our previous `hello_world_fancy.html` page, but again, this time the page is served via HTTP (rather than via the file system).

Another thing that is not obvious in the code but that is important to notice is the page rendered at http://localhost:3000/fancy is using some CSS styling, but there is no `<style>...</style>` section defined in our `fancy.erb` file. Where is this styling coming from?

Sinatra uses the concept of a *layout* page that is used as the base for any other ERB file rendered. You can view the code for it under `./views/layout.erb`. Notice that this page is an skeleton of a page with everything but a `<body>`, in fact the body looks like this:

```
<body>
  <%= yield %>
</body>
```

Sinatra will render everything in the `layout.erb` file and when it sees the `<%= yield %>` directive it will embed the content of our `fancy.erb` as part of output. For more information about layouts in Sinatra checkout [this blog post](https://medium.com/arren-alexander/adding-css-to-your-sinatra-project-f82190e26ca0).


## Sinatra routes

If you point your browser to http://localhost:4567/catalog you'll notice that it renders the content of the file under `./views/ctalog_page.erb` and mixed in the data defined in the Ruby variable `@books`.



## ============================================
## Misc
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


## JavaScript

JavaScript on the client-side.
