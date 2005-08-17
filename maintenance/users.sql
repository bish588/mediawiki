-- SQL script to create required database users with proper
-- access rights.  This is run from the installation script
-- which replaces the password variables with their values
-- from local settings.
--

GRANT ALL ON `{$wgDBname}`.*
 TO '{$wgDBadminuser}'@'%' IDENTIFIED BY '{$wgDBadminpassword}';
GRANT ALL ON `{$wgDBname}`.*
 TO '{$wgDBadminuser}'@localhost IDENTIFIED BY '{$wgDBadminpassword}';
GRANT ALL ON `{$wgDBname}`.*
 TO '{$wgDBadminuser}'@localhost.localdomain IDENTIFIED BY '{$wgDBadminpassword}';

GRANT DELETE,INSERT,SELECT,UPDATE ON `{$wgDBname}`.*
 TO '{$wgDBuser}'@'%' IDENTIFIED BY '{$wgDBpassword}';
GRANT DELETE,INSERT,SELECT,UPDATE ON `{$wgDBname}`.*
 TO '{$wgDBuser}'@localhost IDENTIFIED BY '{$wgDBpassword}';
GRANT DELETE,INSERT,SELECT,UPDATE ON `{$wgDBname}`.*
 TO '{$wgDBuser}'@localhost.localdomain IDENTIFIED BY '{$wgDBpassword}';
