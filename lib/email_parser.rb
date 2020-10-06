# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor:emails

    def initialize(emails = "")
        @emails = emails
    end
        
    def parse
        @emails.split(/[\s,]+/).uniq
    end
end

a = EmailAddressParser.new
a.emails = "john@doe.com, person@somewhere.org"
print EmailAddressParser.new("avi@test.com arel@test.com").parse