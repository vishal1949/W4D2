# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint(8)        not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord

  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: 'Cat'

  validates :status, presence: true, inclusion: { in: %w(APPROVED DENIED),
  message: "%{value} is not a valid status" }
end
