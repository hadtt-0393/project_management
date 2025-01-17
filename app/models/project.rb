class Project < ApplicationRecord
  has_many :project_users, dependent: :destroy
  has_many :users, through: :project_users
  has_many :reports, dependent: :destroy
  has_many :project_customers, dependent: :destroy
  has_many :customers, through: :project_customers
  has_many :release_plans, dependent: :destroy
  has_many :project_environments, dependent: :destroy
  has_many :project_features, dependent: :destroy
  has_many :project_health_items, dependent: :destroy
  has_many :health_items, through: :project_health_items
end
