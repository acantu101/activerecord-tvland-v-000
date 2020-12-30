class Show < ActiveRecord::Base

belongs_to :network
has_many :actors, through: :characters

  def actors_list
    #that returns an Array of the full names of each actor
    # associated with the a show.
    # Remember, a show should have many actors through characters.

    self.Character.map do |c|
      c.name



  end
end

end
