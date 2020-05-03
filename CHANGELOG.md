# CHANGELOG

All important changes to this project will be added to this file! This changelog will be based on [Keep a change log](http://keepachangelog.com/)

## 0.1.0 - Dockerfile support - [27-04-2020]

### Added

* Dockerfile with multi-stages.
* User in Dockerfile.
* Script docker-entrypoint.sh.

## 0.1.0 - Just Initial Adding Files - [27-04-2020]

### Added

* Project structure.
* Dockerfile and Docker Compose support.
* Makefile and Rakefile.
* Initial Gemfile with develop dependencies.
* First version of Bank Account script:
  * Bank Account Class.
  * Constants Module.
  * Binary Search.
  * Validators:
    * Email.
    * CPF.
  * YML Reader Class.
* We create a Binary Search class to implement the Binary Search Algorithm. The purpose is to create a cpfs search to check if we save the information in YML File.
* In YML Class um create a method to validate the file passed to the instance of this class:
  * Check if is YML extension.
  * Check if is null.
  * Check if exist. If not, create.
  * Check if is readable.
* Create a beautiful README.md with HTML syntax.
