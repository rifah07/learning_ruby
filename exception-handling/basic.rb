=begin
 Ruby has an Exception class that makes handling these errors much easier. It also has a syntactic structure using the reserved words begin,
 rescue, and end to signify exception handling. The basic structure looks like this.
=end


begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end