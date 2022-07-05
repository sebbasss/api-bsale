class ExternalProduct < ApplicationRecord
  establish_connection :external_db
  self.table_name = "product"
end
