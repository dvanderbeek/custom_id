class EmailLog < ApplicationRecord
  # Disable STI
  self.inheritance_column = :_type_disabled

  belongs_to :record, polymorphic: true
end
