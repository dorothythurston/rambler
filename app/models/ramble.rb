class Ramble < ActiveRecord::Base
  belongs_to :user
  has_many :likes, as: :likable, dependent: :destroy

  def self.paginated(page, per)
    page(page).per(per)
  end
end
