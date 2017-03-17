name 'berks_demo'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures berks_demo'
long_description 'Installs/Configures berks_demo'
version '0.1.1'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
 issues_url 'https://github.com/asquarezone/chefzone/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
 source_url 'https://github.com/asquarezone/chefzone' if respond_to?(:source_url)

depends 'java', '~> 1.47.0'
depends 'mysql', '~> 8.2.0'