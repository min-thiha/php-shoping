CREATE TABLE `users` (
    `id` INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `email`VARCHAR(100) NOT NULL,
    `password`VARCHAR(100) NOT NULL,
    `phone` VARCHAR(100) NOT NULL,
    `address` TEXT NOT NULL,
    `role` TINYINT(1),
    `created_at` DATETIME,
     `updated_at` DATETIME DEFAULT CURRENT_TIME
);


CREATE TABLE `categories` (
    `id` INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `description` TEXT NOT NULL,
    `created_at` DATETIME,
    `updated_at` DATETIME DEFAULT CURRENT_TIME
);

CREATE TABLE `products` (
    `id` INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `description` TEXT NOT NULL,
    `category_id` INT(11),
    `quantity` INT(10),
    `price` INT(11),
    `image` TEXT,
    `created_at` DATETIME,
     `updated_at` DATETIME DEFAULT CURRENT_TIME
);

CREATE TABLE `sale_orders` (
    `id` INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT(11),
    `total_price` INT(11),
    `order_date` DATETIME DEFAULT CURRENT_TIME
);

CREATE TABLE `sale_order_detail` (
    `id` INT(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `sale_order_id` INT(11),
    `product_id` INT(11),
    `quantity` INT(10),
    `order_date` DATETIME DEFAULT CURRENT_TIME
);

