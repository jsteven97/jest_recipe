# Drupal Recipe Setup Guide For Drupal Sessions

## Prerequisites

- Drupal >= 11.2
- `ddev config --project-type=drupal11 --docroot=web`
- `ddev start`
- `ddev composer create-project "drupal/recommended-project:11.2"`
- `ddev composer require drush/drush`
- Composer with minimum stability set to `dev`
- `ddev composer config minimum-stability dev`

## Instructions for local set up (ddev)
- Clone this repository on recipes directory
- `cd recipes`
- `git clone git@github.com:jsteven97/jest_recipe.git` or `git clone https://github.com/jsteven97/jest_recipe.git`
- Also you need to change your composer and add this to the *repositories*
- `{
        "type": "path",
        "url": "recipes/jest_recipe",
        "options": {
            "symlink": true
        }
  },`
- Like this <img width="533" height="324" alt="imagen" src="https://github.com/user-attachments/assets/17a73f23-a656-40a9-bca5-39b4fd1cd05e" />

- Require recipe into your root composer.json
- `ddev composer require drupal/jest_recipe --no-interaction`
- Before creating your recipe, ensure your `composer.json` has the correct minimum stability:
- Then run drush clean cache and drush recipe command
- `ddev drush cr`
- `ddev drush recipe ../recipes/jest_recipe`
  
