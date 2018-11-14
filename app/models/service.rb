class Service < ApplicationRecord
  belongs_to :category, counter_cache: true
  belongs_to :seller, class_name: "User", foreign_id: :user_id
  has_many :reviews, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :packages, dependent: :destroy
end
