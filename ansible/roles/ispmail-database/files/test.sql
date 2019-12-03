REPLACE INTO `mailserver`.`virtual_domains` (
      `id` ,
      `name`
)
VALUES (
      '1', 'example.org'
);
REPLACE INTO `mailserver`.`virtual_users` (
      `id` ,
      `domain_id` ,
      `password` ,
      `email`
)
VALUES (
      '1', '1', '{BLF-CRYPT}$2y$05$m.GdQNMyUFNG0vPsaXxSB.0ZQqZhe1e9Un841oBcWi6U6HRF2Kmky', 'john@example.org'
);
REPLACE INTO `mailserver`.`virtual_aliases` (
      `id`,
      `domain_id`,
      `source`,
      `destination`
)
VALUES (
      '1', '1', 'jack@example.org', 'john@example.org'
);
