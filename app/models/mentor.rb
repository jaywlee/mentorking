class Mentor < ActiveRecord::Base
  has_many :services
  has_many :centers

  def full_name; "#{first_name} #{last_name} (#{division})";end
    def full_name_center; "#{first_name} #{last_name} ";end
end
