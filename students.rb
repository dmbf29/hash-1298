students =     [ ["Efren", 24], ["Misako", 25], ["Aliia", 22],[ "Dennis", 20] ]
# student_ages = [ 24     , 25      , 22      ,  20    ]

# CRUD

# Create
# students.push('name')
students << 'name'

# Read
students[0]
students[1000] # nil

# Update
students[0] = 'new name'

# Delete
students.delete('name')
students.delete_at(0)


# p students[1][1]

# students.each_with_index do |student, index|
#   puts "#{student} is #{student_ages[index]} years old."
# end

students_age = {
  "Misako" => {'age' => 25, 'address' => '2312 street'},
  "Aliia" => {'age' => 23, 'address' => '13242323 street'},
  "Efren" => {'age' => 22, 'address' => '1223423 street'},
  "Dennis" => {'age' => 20, 'address' => {
                                          'zip code' => '155-0000',
                                          'street' => '123 street'
                                         }
              } }
}
students_age['Dennis']['address']['zip code']

# .each  => with a hash. you have the key AND value
students_age.each do |name, info_hash|
  puts "#{name} is at this address: #{info_hash['address']['zip code']}"
end

students_age

# students_age.each_with_index do |(name, age), index|
#   puts "#{index + 1}.) #{name} is #{age} years old"
# end




# p students[1][1]
# p students_age["Dennis"]['address']

# CRUD

# Create
# hash[new_key] = value
students_age['Lisa'] = 23
students_age
# Read
# hash[key]
students_age['Efren']
# students_age[0]
students_age.keys
students_age.values
students_age.key?('Efren')
students_age.value?(55)

# Update
# hash[old_key] = value
students_age['Efren'] = 28

# Delete
# hash.delete(key)
students_age.delete('Lisa')
