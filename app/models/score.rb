class Score < ApplicationRecord
  belongs_to :student
  belongs_to :assignment, :polymorphic => true 
end
