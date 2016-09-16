class RegistrationService
  attr_reader :user
  def initialize(user)
    @user = user
  end

  def execute
    true
  end
end
