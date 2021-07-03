Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :teachers, :students, :sections, :scores, :periods, :levels, :homeworks, :exams, :essays, :courses, :competencies, :class_sessions

end
