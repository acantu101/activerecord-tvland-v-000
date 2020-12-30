class Show < ActiveRecord::Base

belongs_to :network
has_many :characters, through: :actors

  def actors_list
    #that returns an Array of the full names of each actor
    # associated with the a show.
    # Remember, a show should have many actors through characters.

    self.characters.map do |c|
      c.name

      list_actor_names = "#{c.name}"
      list_actor_names

  end
end

end
