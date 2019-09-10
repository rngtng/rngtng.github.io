---
title: Short Introduction to Rails
tags:
- ruby
---

## Install:

Overview useful components: ruby-toolbox.com

### Must haves:
* homebrew /macports
* git
* rvm


## Load RVM extensions + completion
```
    [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
    [[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
```

create proj folder:
 ```
 $ mkdir  'test'
```

create .rvmrc
```
  $ rvm use ruby-1.9.2-rc2@test --create
```

Init git

```
  $ git init
```

## Interesting gems:
```
  rake (0.8.7)
  bundler (1.0.7)
  cheat (1.3.0)
  gemedit (0.9.0)
  gist (2.0.0)
  git (1.2.5)
  hirb (0.3.5)
  jeweler (1.5.1)
  what_methods (1.0.1)
  wirble (0.1.3)
  awesome_print (0.3.1)
```

## Useful commands:

* rails gems
```
$ gem install rails
```

* create rails project
```
$ rails new . -d mysql -J
```

* check Gemfile for needed gems
```
$ bundle install
```

* check DB file

```
cp database.yml database_example.yml
  $ cat 'db/database.yml' >> .gitignore
```

## getting started

Scaffold: `rails g scaffold Sentence text:text type:string language:string`
Database: `rake db:migrate`
See all rake commands: `rake -T`

## Rails console

* `reload!`
* ` _`   show last result


```
  Sentence.find( :first)
  Sentence.first
  Sentence.find( :first, :conditions => {} )
 ```

 ## AEL
```
Sentence.first.where( :language => 'de' )
 Sentence.where( :language => 'de' ).order("RAND()").limit(1)
```
