class Score < ApplicationRecord
  #idea behind having scores as separate object rather than an attribute of an assignment:
  #1. helps keep the data clean and simplifies method calls since all the different types of assignments would need that attribute and the attributes would need to be accessed
  #2. standardizes scores to a school standard (e.g., 1-100; 1-20; A-F, Pass/Fail, etc.)
  #3. scores might themselves be polymorphic (per examples above in #2), where a certain assignment needs pass/fail or is graded on a 1-20 scale like homework 
  belongs_to :student
  belongs_to :assignment, :polymorphic => true 
end
