require 'rails_helper'

describe User do
  describe 'email' do
    let(:user) {
      User.create!(email: 'foo@example.com', password: 'qweqwe', password_confirmation: 'qweqwe')
    }

    it 'absolutely prevents invalid email addresses' do
      expect{
        user.update_attribute(:email, 'foo@bar.com')
      }.to raise_error(ActiveRecord::StatementInvalid)
    end
  end
end
