class Homework < ApplicationRecord
    has_many :scores, :as => :assignment
    belongs_to :course
end
