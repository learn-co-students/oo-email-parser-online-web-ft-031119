# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    self.emails = emails
  end
  
  def parse
    puts "#{self.emails}"
    arr = []
    arr = emails.split(/, | /)
    #arr = arr.collect do |e|
    #  if e.end_with?(',')
    #    e = e.chomp(",")
    #  else
    #    e
    #  end
    #end
    arr.uniq
  end
end