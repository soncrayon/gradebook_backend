class Essay < ApplicationRecord
    has_many :scores, :as => :assignment
    belongs_to :course
end
