require 'pry'

class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #that returns the first and last name of an actor.
    name = "#{self.first_name} #{self.last_name}"
    name
  end


  def list_roles
    binding.pry
    roles = []
      array_of_characters = self.characters.map {|character| character.name}
      array_of_shows = self.shows.map {|shows| shows.name}
      role = array_of_characters.concat array_of_shows

      roles << role.join(" - ")

      roles

    end


end
