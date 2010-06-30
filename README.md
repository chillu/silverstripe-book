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

## Installation

Each subfolder in this repository is effectively a SilverStripe webroot, 

 * Download and extract http://silverstripe.org/assets/downloads/SilverStripe-v2.3.0.tar.gz
 * Copy all files from a subfolder into the extracted SilverStripe 2

## FAQ

### Do these examples work for the German book as well?

No, they have been significantly updated and changed - the German book and code examples were tested on an early SilverStripe 2.3 beta version.