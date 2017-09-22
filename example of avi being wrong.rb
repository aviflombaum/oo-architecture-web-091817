
module Memoizable
  module ClassMethods
    def all
      self.class_variable_get(:@@all)
    end
  end

  module InstanceMethods
    def save
      self.class.all << self
    end

    def initialize
      puts "I am in Memoizable"
      super
      save
    end
  end
end

class Song
  attr_accessor :name

  @@all = []
  
  extend Memoizable::ClassMethods
  prepend Memoizable::InstanceMethods


  def initialize
    puts "Song Initalize"
  end

end

Song.all
issues = Song.new
puts "hmm"
