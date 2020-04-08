class HelloWorld
	Version = "1.0"
	attr_accessor :name 
	def initialize(myname = "Ruby")
	  @name = myname
    end 

    def hello
    	puts "Hello, world. I am  #{@name}."
    end 

    def self.hello(name)
    	puts "#{name} said hello."
    end 

    def greet 
    	puts "Hi, I am #{self.name}." 
    end
end 

bob = HelloWorld.new("Bob")

ruby = HelloWorld.new

bob.hello

bob.greet


ruby.hello

HelloWorld.hello("John")

# class << HelloWorld
# 	def hello(name)
#       puts "#{name} said hello."
#     end 
# end 

# HelloWorld.hello("John")
