#!/bin/bash

# Custom aliases.
projects="$HOME/Projects"

# Launcher.
# https://github.com/kazajhodo/launcher
alias l="$projects/launcher/launcher.sh"

# Sequelpro-Pantheon.
# https://github.com/kazajhodo/sequelpro-pantheon
alias psql="$projects/sequelpro-pantheon/connect.sh"

# Launcher.
# Gittower.
alias le="code $projects/launcher && gittower $projects/launcher"

# Project switching
# Example: p [project-name]
alias p="cd $projects && cd $1"

# Terminus.
# brew install --cask termius
alias t='terminus dashboard'

# Git
# brew install git
alias g='git add . && git commit -m Updates. && git push'

# drush cr, updb, cex.
alias d='ddev drush cr && ddev drush updb -y && ddev drush cex -y'

# Drupal search api.
# Clear and reindex all indexes.
alias s='ddev drush sapi-c && ddev drush sapi-i'

# Pull Pantheon site db.
# Also can use ddev db -f.
alias db='ddev auth ssh && ddev pull pantheon --skip-files -y'

# Ddev.
# Stop all running instances.
# Start project.
# Drush cr, cim.
# Open code.
# Open gittower.
# Open site in browser.
alias rs='git pull && ddev powerdown && ddev start && ddev drush cr && ddev drush cim -y && code . && gittower . && ddev launch'

# Wordpress cli.
# Composer require wp-cli/wp-cli.
alias wp='vendor/wp-cli/wp-cli/bin/wp'

# Performance metrics and insights.
# Run site tests as mobile, then desktop.
# Assumes ddev usage.
# Uses sitemap for test urls.
function light() {
  unlighthouse --site https://${PWD##*/}.ddev.site --sitemaps /sitemap.xml --build-static
  unlighthouse --site https://${PWD##*/}.ddev.site --sitemaps /sitemap.xml --desktop --build-static
}

# Directory listing.
alias ll='ls -la'
