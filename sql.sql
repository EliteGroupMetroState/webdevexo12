CREATE TABLE IF NOT EXISTS `s163_items` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) default '',
  `description` text NOT NULL,
  `when` int(11) NOT NULL default '0',
  `comments_count` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `s163_items` (`title`, `description`, `when`, `comments_count`) VALUES 
('Item #1', 'Here are you can put description of Item #1', UNIX_TIMESTAMP(), '0'),
('Item #2', 'Here are you can put description of Item #2', UNIX_TIMESTAMP()+1, '0'),
('Item #3', 'Here are you can put description of Item #3', UNIX_TIMESTAMP()+2, '0'),
('Item #4', 'Here are you can put description of Item #4', UNIX_TIMESTAMP()+3, '0'),
('Item #5', 'Here are you can put description of Item #5', UNIX_TIMESTAMP()+4, '0');

CREATE TABLE IF NOT EXISTS `s163_items_cmts` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT ,
  `c_item_id` int(12) NOT NULL default '0',
  `c_ip` varchar(20) default NULL,
  `c_name` varchar(64) default '',
  `c_text` text NOT NULL ,
  `c_when` int(11) NOT NULL default '0',
  PRIMARY KEY (`c_id`),
  KEY `c_item_id` (`c_item_id`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;
