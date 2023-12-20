# Web development in a nutshell
This repository contains the materials for the Web Development in a Nutshell workshop to be presented at [Wintersession 2024](https://winter.princeton.edu/).

Keep in mind that *at this point all the materials are in a very early draft state*

The slides for the workshop be found [here](https://docs.google.com/presentation/d/1dFwsNCUd7iTUzFKF7Po1DZ5KLFQ0t7qprB5VrCiABaM/edit#slide=id.g25432a504aa_0_0)


## Files in this repository

* [tutorial.md](https://github.com/hectorcorrea/webdev-nutshell/blob/main/tutorial.md) has most of the material that we will cover during the workshop.

* **slides.pdf** is a copy of the slides.

* **hello.rb** and **hello_again.rb** are tiny Ruby programs, nothing to do with the web.
* **webdemo1.rb** is a tiny web site in Ruby using Sinatra.
* **webdemo2.rb** a variation of `webdemo1.rb` that shows how to use views (i.e. ERB files).
* **webdemo3_books.rb** a more complete web site (also with Sinatra) that allows the user to edit the data.


## Downloading the code examples
There are two options to download the code examples:

1. If you have Git installed on your machine you can clone this repository:

```
git clone https://github.com/hectorcorrea/webdev-nutshell.git
cd webdev-nutshell
```

2. If you don't have Git installed you can download this repository as a zip file and unzip it:

```
Point your browser to https://github.com/hectorcorrea/webdev-nutshell/archive/refs/heads/main.zip
unzip main.zip
cd webdev-nutshell-main
```


## Required software
For this workshop you'll need to have a text editor and Ruby installed on your machine. The easiest way to get this done is by installing:

* Visual Studio Code (https://code.visualstudio.com/)
* Docker (https://www.docker.com/)

Visual Studio Code is a text editor that works on Mac, Windows, and Linux. It also provides connectivity to Docker which we will use to download a container with Ruby installed on it.

If you already have a version of Ruby running on your machine then you don't need Docker. Any version 2.x or 3.x of Ruby would be OK for this workshop.

If you don't have Ruby already installed on your machine and you don't want to install Docker then you will need to follow the instructions in https://www.ruby-lang.org to download Ruby and install it. Beware that the installation process for Ruby is different on each operating system.
