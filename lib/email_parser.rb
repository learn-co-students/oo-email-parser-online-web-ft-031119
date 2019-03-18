# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails 
  @emails = ""
  
  def initialize(email_string)
    @emails = email_string
  end
  
  def parse
    output = []
    email_array = @emails.split(/[,\s]+/)
    email_array.each do |value|
      output << value unless output.include?(value)
    end
    output
  end
end