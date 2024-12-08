<?php
return [
  'database' => [
    'host' => 'localhost',
    'port' => '',
    'charset' => NULL,
    'dbname' => 'proj_crm',
    'user' => 'root',
    'password' => '',
    'platform' => 'Mysql'
  ],
  'smtpPassword' => '',
  'logger' => [
    'path' => 'data/logs/espo.log',
    'level' => 'WARNING',
    'rotation' => true,
    'maxFileNumber' => 30,
    'printTrace' => false,
    'databaseHandler' => false
  ],
  'restrictedMode' => false,
  'cleanupAppLog' => true,
  'cleanupAppLogPeriod' => '30 days',
  'webSocketMessager' => 'ZeroMQ',
  'clientSecurityHeadersDisabled' => false,
  'clientCspDisabled' => false,
  'clientCspScriptSourceList' => [
    0 => 'https://maps.googleapis.com'
  ],
  'adminUpgradeDisabled' => false,
  'isInstalled' => true,
  'microtimeInternal' => 1730128164.0588359832763671875,
  'passwordSalt' => 'aecc9d63aa1efc83',
  'cryptKey' => '9f248c2d78f46c5e4825c970b08c1a61',
  'hashSecretKey' => '6ed7e1da42ca489c37017f49a8a00c16',
  'defaultPermissions' => [
    'user' => 1,
    'group' => 1
  ],
  'actualDatabaseType' => 'mariadb',
  'actualDatabaseVersion' => '10.4.28',
  'instanceId' => 'e32810ce-23dd-4d48-91bf-9d6b0afebf6a'
];
