[![pipeline status](https://git.drupalcode.org/project/webship_project/badges/11.0.x/pipeline.svg)](https://git.drupalcode.org/project/webship_project/-/pipelines)
[![Webship Project](https://img.shields.io/badge/Webship%20Project-11.0.0--rc1-0d6efc?labelColor=001d38&style=flat-square)](https://git.drupalcode.org/project/webship_project/-/pipelines?ref=11.0.0-rc1)
[![Automated Functional Testing](https://git.drupalcode.org/project/webship_project/badges/11.0.x/pipeline.svg)](https://git.drupalcode.org/project/webship_project/-/pipelines)

# Webship

[![](https://www.drupal.org/files/styles/grid-2/public/WebshipCo-Large-V3-Logo-Color-with-padding.png)](http://drupal.org/project/webship)

The Webship.co portal site was built on top of Drupal, as it has many options, tools, frameworks, and configuration management, which are needed in building solutions.

## Create a site with DDEV

[DDEV](https://ddev.readthedocs.io/en/stable/users/install/ddev-installation/)
is the documented way to run Webship. Composer, PHP, Drush and the database all
run inside DDEV, so nothing is needed on your machine but DDEV itself.

```shell
mkdir my-site && cd my-site
ddev config --project-type=drupal --docroot=web
ddev start
ddev composer create-project drupal/webship_project:11.0.0-rc1
ddev restart
ddev drush site:install webship --account-name=webmaster --account-pass=<password> -y
ddev launch
```

`ddev restart` picks up the `.ddev/config.yaml` the template ships (PHP 8.4,
Node.js 22, MySQL 8.0, Apache), which lands in the project during
`ddev composer create-project` and replaces the one `ddev config` wrote. The
project name is not in that file: DDEV takes it from the directory, so the site
is at `https://<directory>.ddev.site`.

To answer the install questions in a browser instead, skip the `site:install`
line and run `ddev launch` right away.

For the development version of Webship 11.0.x, use the branch constraint:

```shell
ddev composer create-project drupal/webship_project:11.0.x-dev
```

## Without DDEV

The same template works with a Composer, PHP and database stack of your own.
First [install Composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx),
then:

```shell
composer create-project drupal/webship_project:11.0.0-rc1 my-site --no-interaction
cd my-site
vendor/bin/drush site:install webship --account-name=webmaster --account-pass=<password> -y
```

## Requirements

* DDEV — or PHP 8.3 or newer, Composer 2 and a MySQL/MariaDB database.
* Drupal core `~11.4.0`.
* Node.js 20 or newer, for the `webship-js` test suite in `tests/`.

## Links

* Project page: https://www.drupal.org/project/webship
* Issue queue: https://www.drupal.org/project/issues/webship
* Source: https://git.drupalcode.org/project/webship_project
