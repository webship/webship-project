# 11.0.0-rc1

### Highlighted important changes since Webship Project 11.0.0-beta1
* fix: Allow the `symfony/runtime` Composer plugin so `vendor/autoload_runtime.php` is generated and the site installs (previously the scaffolded `web/autoload_runtime.php` fatally failed to load it).

### Added
* Track `composer.lock` and `patches.lock.json`, and refresh `yarn.lock`, for reproducible installs.

### Changed
* chore: Update the project template to support Drupal `~11.4.0` alongside the Webship profile `11.0.0-rc1`.
* docs: Switch the README build badge from CircleCI to GitLab pipelines, and use `drupal/webship_project` in the `create-project` command.
