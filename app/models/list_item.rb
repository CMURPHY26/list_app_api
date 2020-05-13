class ListItem < ApplicationRecord
    belongs_to :list
    default_scope { order(priority: :asc)}
end
