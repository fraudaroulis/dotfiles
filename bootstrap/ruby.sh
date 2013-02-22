# rbenv must be installed already
# paths must be set already
set -e
LATEST_RUBY_MAJOR="1.9.3"
LATEST_RUBY_PATCH="-p194"
if [ ! "`ruby --version | grep $LATEST_RUBY_MAJOR 2>/dev/null`" ]; then
  status "Installing ruby$LATEST_RUBY_MAJOR$LATEST_RUBY_PATCH with rbenv"
  rbenv install $LATEST_RUBY_MAJOR$LATEST_RUBY_PATCH
  rbenv global $LATEST_RUBY_MAJOR$LATEST_RUBY_PATCH
else
  status "Already have global ruby$LATEST_RUBY_MAJOR$LATEST_RUBY_PATCH"
fi
