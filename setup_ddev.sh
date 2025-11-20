#!/usr/bin/env bash
set -euo pipefail

# You can change the ddev set up to work with lando or
# other local dev environments or directly use composer

# Adjust some variables as needed

# Install required modules via ddev Composer.

# Install Drush.
ddev composer require drush/drush

# Install Site and Configure user and password.
# Ask interactively for site/account/password
read -p "Site name (default: site_name): " SITE_NAME
SITE_NAME=${SITE_NAME:-site_name}

read -p "Account name (default: admin): " ACCOUNT_NAME
ACCOUNT_NAME=${ACCOUNT_NAME:-admin}

read -s -p "Account password (default: admin): " ACCOUNT_PASS
echo
ACCOUNT_PASS=${ACCOUNT_PASS:-admin}

ddev drush site:install --account-name="$ACCOUNT_NAME" --account-pass="$ACCOUNT_PASS" -y --site-name="$SITE_NAME"


# Install required modules.
ddev composer require 'drupal/canvas:^1.0@RC'
ddev composer require 'drupal/webform:^6.3@beta'
ddev composer require 'drupal/admin_toolbar:^3.6'
ddev composer require 'drupal/gin:^5.0'
