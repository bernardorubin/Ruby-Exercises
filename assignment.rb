# [Assignment to submit] Ruby Exercises
#
# You have two days to complete this assignment. Please do it individually, put it on Github and have your buddy TA mark it for you.
#
# Question 1
# Implement the following code in Ruby: Create a module called HelperMethods that include a method called titleize that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example, if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.
#
# Then write a piece of code to demonstrate the difference between include and extend in using Ruby modules with classes to include methods. Make sure to demonstrate calling the titleize methods with your code.
################################################################################

require './HelperMethods.rb'

class Class1
  include HelperMethods
end
class Class2
  extend HelperMethods
end

Class1.new.titleize("hello world")
# Class1.titleize("hello world") #will return error

# Class2.new.titleize("hello world") #will return error
Class2.titleize("hello world")

################################################################################
# Question 2
# Build a Ruby class called Book. Objects of the Book class must have two attributes: title and chapters. Objects must have two methods: add_chapter and chapters. The add_chapter method adds a chapter by giving it a title. The chapters method should display the number of chapters and lists all the chapters as in:
#
# book = Book.new
# book.title = "My Awesome Book"
# book.add_chapter("My Awesome Chapter 1")
# book.add_chapter("My Awesome Chapter 2")
# book.chapters
# # This should print:
# # Your book: My Awesome Book has 2 chapters:
# # 1. My Awesome Chapter 1
# # 2. My Awesome Chapter 2
################################################################################

class Book
    attr_accessor :title, :chapters, :chapter

    def initialize (title="NoTitle", chapters=[])
      @title = title
      @chapters = chapters
    end

    def chapters
      #array
      #displays number of chapters
      #lists all chapters

      puts "#{title} has #{@chapters.length} chapters "
      # @chapters.each {|x| puts x }
      @chapters.each_with_index {|x,y| puts "#{y+1}. #{x}"}
    end

    def add_chapter (chapter_title)
      #adds chapter by giving it a title
       @chapter_title = chapter_title
       @chapters << @chapter_title
    end
end

book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.add_chapter("My Awesome Chapter 3")
book.chapters

################################################################################
# Question 3
# Write a Ruby method called: is_prime. The function must take a number n and it should return true or false whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.
################################################################################


def is_prime(num)
  if num.is_a? Integer
  if num >1
      coincidences = 0
      2.upto(num) do |prime|
        #puts "#{num} -> num / #{prime} -> prime = #{num % prime}"
        if num % prime == 0
          coincidences += 1
        end
      end
    if coincidences >=2
      false
    else
      true
    end
  else
    false
  end
else
  "That isn't an integer."
end
end

p is_prime(197)
p is_prime(198)
p is_prime(0)
p is_prime(1)
p is_prime(2)
p is_prime(2.5)
p is_prime(3)
p is_prime(4)

################################################################################
# Question 4
# Given a ruby Hash that looks like this:
#
# var major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]}
# Write a piece of code that loops through the object and prints the following to the console:
#
# BC has 3 main cities: Vancouver, Victoria, Prince George
# AB has 2 main cities: Edmonton, Calgary
# [Stretch]: Make sure that there is an and before the last one:
#
# BC has 3 main cities: Vancouver, Victoria and Prince George
# AB has 2 main cities: Edmonton and Calgary
################################################################################

major_cities = {
    BC: ["Vancouver", "Victoria", "Prince George"],
    AB: ["Edmonton", "Calgary"]
  }

major_cities.each do |key, value|
  message = "#{key} has #{value.length} main cities: "
  cities = ""
  value.each_with_index do |city, index|
    if index == value.length-1
      cities += "and #{city}"
    else
      cities += "#{city}, "
    end
  end
  message += cities
  puts message
end

################################################################################
