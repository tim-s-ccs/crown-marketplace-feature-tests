class CurrentUser
  attr_accessor :email, :password

  def initialize(role)
    email_key, password_key = ROLE_TO_KEYS[role]

    @email = ENV.fetch(email_key, nil)
    @password = ENV.fetch(password_key, nil)
  end

  ROLE_TO_KEYS = {
    buyer: ['BUYER_EMAIL', 'BUYER_PASSWORD'],
    buyer_without_details: ['BUYER_NOT_DETAILS_EMAIL', 'BUYER_NOT_DETAILS_PASSWORD'],
    admin: ['ADMIN_EMAIL', 'ADMIN_PASSWORD']
  }.freeze
end

def initialize_current_user(role)
  @current_user = CurrentUser.new(role)
end

def current_user(role = :buyer)
  @current_user ||= CurrentUser.new(role)
end
