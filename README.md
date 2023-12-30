# Web development in a nutshell
This repository contains the materials for the Web Development in a Nutshell workshop to be presented at [Wintersession 2024](https://winter.princeton.edu/).

The slides for the workshop be found [here](https://docs.google.com/presentation/d/1dFwsNCUd7iTUzFKF7Po1DZ5KLFQ0t7qprB5VrCiABaM/edit#slide=id.g25432a504aa_0_0)


## Files in this repository

Workshop tutorial:
* [tutorial.md](https://github.com/hectorcorrea/webdev-nutshell/blob/main/tutorial.md) has most of the material that we will cover during the workshop.
* **tutorial.pdf** is a copy of tutorial.md but in PDF format.
* **slides.pdf** is a copy of the slides but in PDF format.

HTML and CSS examples:
* **hello-world.html** and **hello-world-fancy.html** are two small HTML samples.
* **css-column-layout.html** shows how to use CSS multiple column layout.
* **css-grid-layout.html** shows how to CSS grid layout.

Ruby examples:
* **hello.rb** and **hello_again.rb** are sample Ruby programs, nothing to do with the web.
* **webdemo1.rb** is a tiny web site in Ruby using Sinatra.
* **webdemo2.rb** a variation of `webdemo1.rb` that shows how to use views (i.e. ERB files).
* **webdemo3_books.rb** a more complete web site that allows the user to edit the data.


## Required software
For this workshop you'll need to have a text editor and Ruby installed on your machine. The easiest way to get this done is by downloading and installing:

* Visual Studio Code (https://code.visualstudio.com/)
* Docker (https://www.docker.com/get-started/)

Visual Studio Code is a text editor that works on Mac, Windows, and Linux. It also provides connectivity to Docker which we will use to download a container with Ruby installed on it.

Once you have downloaded and installed Docker make sure you run the Docker application (aka Docker Desktop) and keep it running for the duration of the workshop.

> Note: If you already Ruby installed on your machine then you don't need Docker.
> Any version 3.x of Ruby is OK for this workshop.


## Downloading the code examples
There are two options to download the code examples:

1. If you have Git installed on your machine you can clone this repository:

```
git clone https://github.com/hectorcorrea/webdev-nutshell.git
```

2. If you don't have Git installed you can download this repository as a zip file and unzip it:

* Point your browser to https://github.com/hectorcorrea/webdev-nutshell/archive/refs/heads/main.zip
* Unzip the downloaded file `webdev-nutshell-main.zip`


## Getting started
Once you have downloaded the code examples launch Visual Studio Code and open the folder with the code examples: `webdev-nutshell` if you used Git or `webdev-nutshell-main` otherwise.

And now read and follow the steps in
[tutorial.md](https://github.com/hectorcorrea/webdev-nutshell/blob/main/tutorial.md)