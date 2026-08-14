class Task < ApplicationRecord
    has_rich_text :description
    enum :status, { todo: 0, done: 1, rest: 2, skipped: 3 }
end
