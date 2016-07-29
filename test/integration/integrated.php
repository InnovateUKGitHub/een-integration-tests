<?php

/**
 * load config
 * @see https://github.com/laracasts/Integrated/wiki/Configuration
 * default config is at ./config/config.php
 * environment overrides will be loaded from ./config/{APPLICATION_ENV}/config.php
 * e.g. ./config/development/config.php
 */

//default config
$config = require __DIR__ . '/config/config.php';

//merge environment specific config from ./config/{APPLICATION_ENV}/config.php if provided
$environmentConfigFilePath = __DIR__ . '/config/' . APPLICATION_ENV . '/config.php';
if (file_exists($environmentConfigFilePath)) {
    $config = array_merge($config, require $environmentConfigFilePath);
}

return $config;
