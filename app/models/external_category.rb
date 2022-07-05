class ExternalCategory < ApplicationRecord
  establish_connection :external_db
  self.table_name = "category"
end
