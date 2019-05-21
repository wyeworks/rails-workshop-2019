class Board < ApplicationRecord
  validates :name, presence: true

  has_many :lists, dependent: :destroy

  after_create do
    ['To Do', 'Doing', 'Done'].each { |name| self.lists.create(name: name) }
  end
end
