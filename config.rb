##
## This file is only needed for Compass/Sass integration. If you are not using
## Compass, you may safely ignore or delete this file.
##
## If you'd like to learn more about Sass and Compass, see the sass/README.txt
## file for more information.
##

# Change this to :production when ready to deploy the CSS to the live server.
environment = :development
#environment = :production

# In development, we can turn on the FireSass-compatible debug info.
#firesass = false
firesass = true

# Set this to the root of your project when deployed:
http_path = "../"
css_dir = "css"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "js"

# Require any additional compass plugins here.

##
## You probably don't need to edit anything below this.
##

# Remove query sting from image url when use image-url().
asset_cache_buster :none

# You can select your preferred output style here (can be overridden via the
# command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = (environment == :development) ? :expanded : :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# Disable line comments if firesass plugin is enabled.
line_comments = (environment == :development) ? (firesass == true) ? false : true : false;

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

# Pass options to sass. For development, we turn on the FireSass-compatible
# debug_info if the firesass config variable above is true.
sass_options = (environment == :development && firesass == true) ? {:debug_info => true} : {}
