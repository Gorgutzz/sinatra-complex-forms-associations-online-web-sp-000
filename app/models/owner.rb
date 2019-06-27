class Owner < ActiveRecord::Base
  has_many :pets

  def show_pets_as_string
    str = ""
    self.pets.each do |pet|
      str += '|' unless str == ""
      str += " #{pet.name} "
    end
    str
  end
end
