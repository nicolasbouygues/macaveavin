class Wine < ApplicationRecord
  belongs_to :cellar
  belongs_to :user
end
