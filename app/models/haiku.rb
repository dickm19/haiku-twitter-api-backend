class Haiku < ApplicationRecord
    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :users, through: :favorites
    # before_save :new_time

    # def new_time
    #     self.created_at = (Time.now - (rand * 350000)).strftime('%m/%d/%Y %I:%M:%S')
    # end

    # private

    # def timestamps_attributes_for_create
    #     [:created_at]
    # end
end
