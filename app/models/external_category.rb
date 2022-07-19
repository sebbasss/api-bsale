class ExternalCategory < ApplicationRecord
  # connecting with external database, configured in database.yml
  establish_connection :external_db
  self.table_name = "category"

  # search methods to be used in the controller, avoiding defining them there
  scope :search_by_name, ->(params) { find_by!('name = ?', params) }

  # validations to make the API more robust
  validates :name, presence: true
end
