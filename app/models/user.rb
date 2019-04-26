class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :favorites
  has_many :favorite_listings, through: :favorites, source: :favorited, source_type: 'Listing'

  # Mailboxer
  acts_as_messageable

  def mail_email(object)
    email
  end

  def name
    email
  end
end
