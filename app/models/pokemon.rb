class Pokemon < ActiveRecord::Base
  belongs_to :trainer
  validates :name, presence: true, uniqueness: { scope: :trainer_id}
end
