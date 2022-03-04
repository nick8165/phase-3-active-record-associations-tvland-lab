class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def characters
    self.characters.select('name').map(&:name)
  end

  def shows
    self.characters.each do |c|
        c.shows
    end
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.each do |c|
        "#{c.name} - #{c.show}"
    end
  end
end