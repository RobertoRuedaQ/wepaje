class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Validations
  validates :first_name, :last_name, :second_last_name, :document_id, :password, :address, :neighborhood, :state, :city, :zipcode, :payment_method, presence: true
  # Asociations

  has_many :referreds, class_name: "User", foreign_key: "owner_id", before_add: :validate_referreds_limit
  belongs_to :owner, class_name: "User"
  has_many :orders
  #before_create :set_default_role
  #after_initialize :set_default_role, :if => :new_record?

  def admin?
    self.role.name == 'admin'
  end

  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end

  private

    def validate_referreds_limit(user)
      raise Exception.new if referreds.count == 4
    end

end
