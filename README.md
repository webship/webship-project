[![pipeline status](https://git.drupalcode.org/project/webship_project/badges/12.0.x/pipeline.svg)](https://git.drupalcode.org/project/webship_project/-/pipelines)
[![Automated Functional Testing](https://git.drupalcode.org/project/webship_project/badges/12.0.x/pipeline.svg)](https://git.drupalcode.org/project/webship_project/-/pipelines)

# Webship

[![](https://www.drupal.org/files/styles/grid-2/public/WebshipCo-Large-V3-Logo-Color-with-padding.png)](http://drupal.org/project/webship)

The Webship.co portal site was built on top of Drupal, as it has many options, tools, frameworks, and configuration management, which are needed in building solutions.

## Create a site with DDEV

[DDEV](https://ddev.readthedocs.io/en/stable/users/install/ddev-installation/)
is the documented way to run Webship. Composer, PHP, Drush and the database all
run inside DDEV, so nothing is needed on your machine but DDEV itself.

```shell
mkdir my-site && cd my-site
ddev config --project-type=drupal --docroot=web --database=mysql:8.0
ddev start
ddev composer create-project drupal/webship_project:~12.0
ddev restart
ddev drush site:install webship --account-name=webmaster -y
ddev drush user:login
ddev launch
```

`ddev restart` picks up the `.ddev/config.yaml` the template ships (PHP 8.4,
Node.js 22, MySQL 8.0, Apache), which lands in the project during
`ddev composer create-project` and replaces the one `ddev config` wrote. The
project name is not in that file: DDEV takes it from the directory, so the site
is at `https://<directory>.ddev.site`. The database type must match that file
from the first `ddev start`, hence `--database=mysql:8.0`.

To answer the install questions in a browser instead, skip the `site:install`
line and run `ddev launch` right away.

For the development version, use the branch constraint:

```shell
ddev composer create-project drupal/webship_project:12.0.x-dev
```

## Drupal 12 (beta)

The template installs the latest Drupal 11 by default. It also allows Drupal 12,
which needs PHP 8.5. To try it, set `php_version: "8.5"` in `.ddev/config.yaml`
(a DDEV release with PHP 8.5 is needed), then:

```shell
ddev restart
ddev composer config --unset platform.php
ddev composer require drupal/core:^12 drupal/core-composer-scaffold:^12 drupal/search:^1 -W
```

Search left Drupal core in Drupal 12; Webship Portal uses it, so the contrib
`drupal/search` module comes with the upgrade.

Contributed modules that don't declare Drupal 12 support yet are allowed by the
`mglaman/composer-drupal-lenient` plugin (`extra.drupal-lenient.allowed-list`),
and `webship/patches` adds `^12` to their info files. Some of them still fail on
Drupal 12; see the Webship issue queue.

## Requirements

* DDEV.
* Drupal core `^11.4`, or `^12` with PHP 8.5.
* Node.js 20 or newer, for the `webship-js` test suite in `tests/`.

## Links

* Project page: https://www.drupal.org/project/webship
* Issue queue: https://www.drupal.org/project/issues/webship
* Source: https://git.drupalcode.org/project/webship_project
