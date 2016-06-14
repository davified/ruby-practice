=begin
comments:
1) describe: describes what it's testing for.
2) some conventions: . denote class methods (i.e. Bank's methods) and # denotes instance methods (i.e. bank's methods) (in other languages, this is known as a static class method)
3) objects and variables created between the <describe ... do ... end> are limited within that scope (i.e. after the end, those objects and variables do not exist anymore)
=end

require_relative 'spec_helper'
require_relative '../bank'
