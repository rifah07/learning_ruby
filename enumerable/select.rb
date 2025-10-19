# select in hash
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
p(responses.select { |_person, response| response == 'yes' })
#=> {"Sharon"=>"yes", "Arun"=>"yes"}
p(responses.select { |_, response| response == 'no' })
#=> {"Leo"=>"no", "Leila"=>"no"}
