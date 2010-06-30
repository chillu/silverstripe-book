# Code Examples for "SilverStripe: The Complete Guide to CMS Development" (Wiley)

Authors: Ingo Schommer, Steven Broschart, ISBN: 978-0470681831

## Overview

Each subfolder in this repository is its own SilverStripe project. The projects are related to book chapters, and roughly build upon each other (meaning `5_development/` contains all code from `4_first_steps/`).

- `4_first_steps/`: See Chapter 4, "First Steps". 
  Standard cms installation with sample data and the "userforms" and "blog" modules.

- `5_development/`: See Chapter 5, "Development".
  Start of the job portal code in `mysite/` folder.

- `6_crm/`: See Chapter 6, "CRM".
  Continued codebase of `5_development/`, with "multiform" module and ModelAdmin implementations.

- `11_recipes/`: See Chapter 11, "Recipes".
  Contains all recipes apart from Section 11.9.

- `11_recipes_flash/`: See Chapter 11, "Recipes", Section 11.9, "A fully Flash-based website"
  Contains Flash sourcefiles and PHP XML code generation necessary for flash-based recipe.

- `12_extending/`: See Chapter 12, "Extending".
  Contains decorators and unit tests, as well as the code from `5_development/` and
  `6_crm/` packaged up as a module in the `jobs/` folder.

See `README.txt` in subfolders for installation instructions.

## Requirements

 * http://doc.silverstripe.org/server-requirements
 * SilverStripe 2.3.0 (not tested with any newer versions)
 * PHP 5.2 (SilverStripe 2.3.0 doesn't work with 5.3 yet)

## Installation

Each subfolder in this repository is effectively a SilverStripe webroot. To install, simply copy `mysite/_config_example.php` to `mysite/_config.php` and adjust the database settings.
IMPORTANT: Do NOT use the SilverStripe installer (`install.php`), as this will override your `_config.php`, removing any important preferences that might have been pre-set in there.

## FAQ

### Do these examples work for the German book as well?

No, they have been significantly updated and changed - the German book and code examples were tested on an early SilverStripe 2.3 beta version.

### How do I figure out which module versions are used in the example projects?

Dependencies are managed with [http://piston.rubyforge.org](Piston), a small ruby script that copies files from a target repository, in our case `svn.silverstripe.com`. It also creates a small file called `piston.yml` in each checked-out folder, which contains the revision it was last updates, as well as the subversion tree (and version number). For example, the version of blog module used for chapter 6 is in `6_crm/blog/.piston.yml` (`repository_url: http://svn.silverstripe.com/open/modules/blog/tags/0.2.1`).