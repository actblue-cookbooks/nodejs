maintainer       "Promet Solutions"
maintainer_email "marius@promethost.com"
license          "Apache 2.0"
description      "Installs/Configures nodejs"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.3.0"
name             "nodejs"
provides         "nodejs"

recipe "nodejs", "Installs Node.JS based on the default installation method"
recipe "nodejs::install_from_package", "Installs Node.JS from packages"

depends 'apt'

supports 'debian'
supports 'ubuntu'
