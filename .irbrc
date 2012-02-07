def colputs(array)
  def num_columns; 4; end
  def col_width; 25; end
  def force_length(x)
    x = x.to_s
    max_length = col_width+2
    if x.length > max_length
      x = x[0..max_length-4] + '...'
    end
    x += (' '*max_length)
    x[0..max_length-1]
  end
  def get_element(array, i) # displays in column order instead of row order
    num_rows = (array.length/num_columns)+1
    col = i % num_columns
    row = i / num_columns
    array[col*num_rows+row]
  end
  for i in (0..array.length)
    print force_length(get_element(array, i))
    print "  "
    puts if (i % num_columns) == (num_columns-1)
  end
  nil
end

class Object
  # Return only the methods not present on basic objects
  def show_methods
    colputs (self.methods - Object.new.methods).sort
  end
end


require 'logger'
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  # log SQL to the Rails console
  Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
end

require "rubygems"
require "awesome_print"

# Awesome Print: https://github.com/michaeldv/awesome_print
unless IRB.version.include?('DietRB')
  IRB::Irb.class_eval do
    def output_value
      ap @context.last_value
    end
  end
else # MacRuby
  IRB.formatter = Class.new(IRB::Formatter) do
    def inspect_object(object)
      object.ai
    end
  end.new
end

