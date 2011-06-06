require 'rubygems'
require 'bundler'
require 'pstore'
require 'yaml'

Bundler.require

config = YAML::load(File.open("#{Dir.pwd}/config.yml"))

Pusher.app_id = config['pusher']['app_id']
Pusher.key = config['pusher']['key']
Pusher.secret = config['pusher']['secret']

require './server'
run Reversi
