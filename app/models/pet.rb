class Pet < ActiveRecord::Base
  belongs_to :owner

  def owner_name
    self.owner.nil? ? 'up for adoption' : self.owner.name
  end
end
