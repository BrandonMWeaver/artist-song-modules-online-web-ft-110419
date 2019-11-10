require 'pry'

class Song
  include Paramable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable
  
  @@all = []
  
  attr_accessor :name
  attr_reader :artist
  
  def initialize
    super
  end
  
  def self.all
    return @@all
  end
  
  def artist=(artist)
    @artist = artist
  end
end
