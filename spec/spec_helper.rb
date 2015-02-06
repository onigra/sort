require 'rspec'
Dir["./lib/*/*.rb"].delete_if { |f| f =~ /benchmark/ }.each { |f| require f }
