---
tags:
- mysql
- beginner
- tutorial
---

# MySQL for beginners

## Install
 - Homebrew -> http://brew.sh
  - `brew install mysql`
 - or: http://dev.mysql.com/downloads/mysql/5.5.html#macosx-dmg
 - SequelPro -> http://www.sequelpro.com
 

## Start
 - Connect to root@localhost
 - Graphical vs. CLI vs. progamitacal

## Basic Structure
 1. What is Database?
 1. What is Table?
   - columns + datatype (INT, VARCHAR, TEXT)
   - good practice: first column `id` as primary key & auto increment
 1. Setup:
   - add table `users`, columns: `id` (INT), `name` VARCHAR(255), `lastname` VARCHAR(255)
   - add table `tracks`, columns: `id` (INT), `user_id` (INT), `name` VARCHAR(255)

```sql
CREATE TABLE `users` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `lastname` VARCHAR(255),
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `tracks` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT(11),
  `name` VARCHAR(255),
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
```

## Commands

### INSERT
 ```sql
 INSERT INTO `users` SET `name` = "Marie";
 ```
 or multiple line style:
 
 ```sql
 INSERT INTO `users` (`id`, `name`, `lastname`) VALUES (NULL, 'Marie', 'Parker'), (NULL, 'Peter', 'Parker');
 ```
 
### SELECT
All users:
```sql
SELECT * FROM `users` 
```

#### WHERE
`WHERE` allows to filter output e.g. All users with name 'peter':
```sql
SELECT * FROM `users` 
WHERE `name` = 'Peter'
```
All users whos name contains 'e' ('%' means don't care):
```sql
SELECT * FROM `users` 
WHERE `name` LIKE '%e%'
```

Combine conditions:
```sql
SELECT `name`, `id` FROM `users` 
WHERE `name` = 'Peter' OR `lastname` = 'Parker')
```

Select only specific columns:
```sql
SELECT `name`, `id` FROM `users` 
WHERE `name` = 'Peter'
```

### UPDATE

Combination of `INSERT` & `WHERE` syntax:

```sql
UPDATE `users` SET `lastname` = 'muller' 
WHERE `name` = 'Peter';
```

Best practice, use primary key:
```sql
UPDATE `users` SET `lastname` = 'muller' 
WHERE `id` = 1;
```  
  
### SELECT .. JOIN
select & filter data across multiple tables.

Quick and dirty:
```sql
SELECT * FROM `users`, `tracks`	
WHERE `user`.`name` = 'Peter' AND `tracks`.`user_id` = `user`.`id`
```

Better: (see `JOIN` as [dot product](http://en.wikipedia.org/wiki/Dot_product) of users x tracks)
```sql
SELECT * FROM `users`
JOIN `tracks` ON `tracks`.`user_id` = `user`.`id`
WHERE `user`.`name` = 'Peter'
```

Even include empty rows:
```sql
SELECT * FROM `users`
LEFT JOIN `tracks` ON `tracks`.`user_id` = `user`.`id`
```

==== next session ===

### More on SELECT
 - Functions
 - order by
 - limit
 - group
 - indexes, constraints
 - insert select
 
## More
 - csv import
 - mysql CLI
 - variables
 - master/slave
 - access rights
 - transaction
 - rollback
