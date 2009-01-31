require 'fileutils'

our_config = File.join(File.dirname(__FILE__), 'config', 'google_ad_sense.yml')
config = File.join(RAILS_ROOT, 'config')

FileUtils.cp(our_config, config)
