def input_students
  cohort_months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    puts "Please enter the names of the students"
    puts "To finish, just hit the return twice"
    students =[]     # create an empty array
    name = gets.chomp
  while !name.empty? do # while name is NOT empty, repeat this code
    puts "What cohort month are you in?"
    cohort = gets.chomp
    # if cohort is empty, return undefined
    if cohort.empty?
      cohort = "Undefined"
    end
    downcase_cohorts = cohort_months.map {|x| x.downcase}
    cohort_input_downcase = cohort.downcase
    unless downcase_cohorts.include?(cohort_input_downcase)
      puts "Please check your cohort value and enter a full month (EG: November)"
      cohort = gets.chomp
    end
      puts "Please enter what country you are from: "
    country = gets.chomp
    puts "What is your most favourite hobby?"
    hobby = gets.chomp
    students << {name: name, cohort: cohort, country: country, hobby: hobby}
    puts "Now we have #{students.count} students"
    puts "Enter another name (or hit enter when you're done): "
    #puts "name",name
    name= gets.chomp
  end
  # return the array of students
  students
end


def print_header
  puts "The students of Villains Academy".center(20)
  puts "-------------".center(20)
end

#Pass hash through of name and cohort
def print(students)
  students.each_with_index do |student, index|
   puts "#{(index +1)}. #{student[:name]}, #{student[:country]} (#{student[:cohort]} cohort) favourite hobby is #{student[:hobby]}"
  end
end



def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)

# Exercises

# 1) Modify the program to print a number before each name of student. 
# EG: 1. Dr. Hannibal Lecter (hint: each_with_index())

# 2) Modify your program to only print students whos name begins
# with a specific letter
#def print(students)
#    students.each {|x| puts x if x[:name].start_with? 'A'}
#end

# 3) Modify your program to only print the students whose
# name is shorter than 12 characters.

#def print(students)
#    students.each {|x| puts x if x[:name].length < 12}
#

# 4) Rewrite the each() method that prints all students using 
# while or until control flow methods.

#def print_while(students)
  # iteration around the students array
 # puts "Displaying students using a WHILE"
 # index = 0
 # while index < students.count do
 #   puts "#{index+1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
 #   index += 1
 # end
 # puts
#end

# 5) Add in input for hobby and country

# 6) Research how center works and use it to align code
# It did not work on certain strings such as the print footer?

# 7) Input_students cohort is hard-coded (November). How to make it ask for name
#and cohort.
# What if one of the values is empty? (Can you supply a default value?)
# Input is a string, how to convert to a symbol
# What if the user makes a typo?

# 8
# In the input_students method the cohort value is hard-coded.
# How can you ask for both the name and the cohort? DONE
# What if one of the values is empty? Can you supply a default value? DONE
# The input will be given to you as a string? How will you convert it to a symbol? to_sym
# What if the user makes a typo? DONE!