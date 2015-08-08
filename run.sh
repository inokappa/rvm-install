#!/bin/sh

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable
source $HOME/.rvm/scripts/rvm   
rvm install ${WERCKER_RVM_INSTALL_RUBY_VERSION} --default     
echo "gem: --no-rdoc --no-ri" >> $HOME/.gemrc
