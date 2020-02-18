require 'html-proofer'

options = { :empty_alt_ignore => true, 
  :disable_external => true, 
  :allow_hash_href => true }

HTMLProofer.check_directory("./build", options).run