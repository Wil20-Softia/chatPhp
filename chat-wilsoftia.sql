CREATE DATABASE IF NOT EXISTS chat_wilsoftia CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE chat_wilsoftia;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `incoming_msg_id` varchar(255)  NOT NULL,
  `outgoing_msg_id` varchar(255)  NOT NULL,
  `msg` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD `status` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL AFTER `img`,
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
    