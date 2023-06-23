Demo code for the [Web development in nutshell](https://docs.google.com/presentation/d/1SG0GHzKND0RO6X8LOGVJeqwMFpy1RXY-0Gt7vwm9c6I/edit#slide=id.g25432a504aa_0_5) tiny workshop.

To run the code in this repo you'll need to clone it and install Sinatra on your machine. To do this via the Terminal run the following commands:

```
git clone https://github.com/hectorcorrea/webdev-nutshell.git
cd webdev-nutshell
$ gem install sinatra
```

and then you can run the demo with the following command:

```
$ ruby webdemo1.rb
```

With the demo running, point your browser to http://localhost:4567/hello

`webdemo1.rb` only supports a single URL (`/hello`) but it is a "web app" in the sense that there is a Ruby program acting as the server.

Stop the "server" with CTRL+C on your terminal.

## webdemo2.rb

File `webdemo2.rb` has another example that shows that you can execute Ruby code, render HTML from external files, and use Ruby code to generate the HTML.

To execute this demo run:

```
$ ruby webdemo2.rb
```

and then point your browser to http://localhost:4567/hello you'll notice that it rendered the file from `views/hello_page.erb`

If you point your browser to http://localhost:4567/catalog you'll notice that it renders the content of the file under `./views/ctalog_page.erb` and mixed in the data defined in the Ruby variable `@books`.
