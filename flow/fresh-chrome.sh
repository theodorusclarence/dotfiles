# @see https://gist.github.com/prasadsilva/225fd0394a51e52bf62f

# Change this to the spoof a different timezone. Helpful for testing timezone specific client facing content.
export TZ=${TZ:-"America/Los_Angeles"}

# Permanent directory to store the user-data directory of your 'fresh'
# Chrome configuration.
fresh_dir="$HOME/.fresh-chrome"

# Temporary directory in which to create new user-data directories for
# temporary Chrome instances.
tmp_dir="/tmp"



### Main script begins

set -e

timestamp=`date +%Y%m%d%H%M%S`

if [[ -e "$fresh_dir" ]]; then
    user_dir="$tmp_dir/chrome-$timestamp-$RANDOM"
    cp -r "$fresh_dir" "$user_dir"
    exec open -na "Google Chrome" --args "--user-data-dir=$user_dir"
else
    exec open -na "Google Chrome" --args "--user-data-dir=$fresh_dir"
fi