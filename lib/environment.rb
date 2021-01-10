require_relative "./bored/version"
require 'bundler'


Bundler.require

require_relative "./bored/cli"
require_relative "./bored/api"
require_relative "./bored/bored"