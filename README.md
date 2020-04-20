[![Build Status](https://travis-ci.org/webship/webship-project.svg?branch=8.2.x)](https://travis-ci.org/webship/project)

# Webship

[![](/assets/images/branding/webship-logo.png)](http://drupal.org/project/webship)

Helps in speeding up the work of web developers to ship websites in a swift way.

Built on top of Drupal, as it has many options, tools, frameworks, and
 configuration management, which needed in building solutions.

## Usage

First you need to [install composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).

> Note: The instructions below refer to the [global composer 
installation](https://getcomposer.org/doc/00-intro.md#globally).
You might need to replace `composer` with `php composer.phar` (or similar) 
for your setup.

After that you can create the project:

To install the most recent stable release of Webship 8.2.x run this command:
```
composer create-project webship/webship-project:^8.1.0-alpha1 WEBSITE_NAME --no-dev --no-interaction
```

To install the dev version of Webship 8.8.x run this command:
```
composer create-project webship/webship-project:8.2.x-dev WEBSITE_NAME --stability dev --no-interaction
```
