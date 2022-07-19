class ExternalProduct < ApplicationRecord
  # connecting with external database, configured in database.yml
  establish_connection :external_db
  self.table_name = "product"

  # search methods to be used in the controller, avoiding defining them there
  scope :search_by_name, ->(params) { where("name LIKE ?", "%" + "#{params}" + "%") }
  scope :search_by_category, ->(params) { where('category = ?', params) }

  # validations to make the API more robust
  validates :name, :url_image, :price, presence: true
end
