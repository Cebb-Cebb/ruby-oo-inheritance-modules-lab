class Song 
  attr_accessor :name
  attr_reader :artist
  
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@songs = []

  def initialize
    super 
    # self.class.all << self
  end

  def artist=(artist)
    @artist = artist
  end 

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end
end
