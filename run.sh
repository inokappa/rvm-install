#!/bin/sh

if [ ! -n "${WERCKER_RVM_INSTALL_VERSION}" ]; then
  error 'Please specify ruby-version property'
  exit 1
fi

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable
source $HOME/.rvm/scripts/rvm   
rvm install ${WERCKER_RVM_INSTALL_VERSION} --default     
echo "gem: --no-rdoc --no-ri" >> $HOME/.gemrc
