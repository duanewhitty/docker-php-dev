# Script for building Vim PHP IDE environment.

##############################################
#                                            #
#            IMPORTATANT NOTE                #
#                                            #
# Not ready for production use.              #
#                                            #
# This build uses a lot of hard coded paths  #
# specific to my environment.                #
#                                            #
#                                            #
#                   TO DO                    #
#                                            #
# Refactor build process to use              #
# environment variables for build paths      #
# and other things that are hard coded now   #
#                                            #
# In the future we will also be using a      #
# Docker compose process to orchestrate      #
# instead of a bash script.                  #
#                                            #
##############################################

# Make our Vim configuration directories
mkdir -p /c/Users/LENOVO/dev/docker/php/docker-php-dev/.vim
mkdir -p /c/Users/LENOVO/dev/docker/php/docker-php-dev/.vim/autoload
mkdir -p /c/Users/LENOVO/dev/docker/php/docker-php-dev/.vim/colors

# The Vim package manager Pathogen expects to find packages in
# .vim/bundle by default.  This can be configured but this build
# uses the default location.
mkdir -p /c/Users/LENOVO/dev/docker/php/docker-php-dev/.vim/bundle

# Download and install Pathogen into .vim/autoload so that it will
# run when Vim is started.
cd /c/Users/LENOVO/dev/docker/php/docker-php-dev/.vim/autoload
curl -LSso pathogen.vim https://tpo.pe/pathogen.vim


# Download and install packages into the bundle directory that are
# useful for use Vim as an IDE for PHP.  Pathogen will make sure they
# get loaded appropriately.
cd /c/Users/LENOVO/dev/docker/php/docker-php-dev/.vim/bundle
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/tpope/vim-surround.git

