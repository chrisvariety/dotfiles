#require 'rubygems'
#require 'wirble'
# start wirble (with color)
#Wirble.init
#Wirble.colorize

require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:EVAL_HISTORY] = 200
IRB.conf[:SINGLE_IRB] = true
