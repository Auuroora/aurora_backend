require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { FactoryGirl.build(:user)}

  describe 'Create' do
    it "회원가입 TDD" do
      get :create, params: {username: user.username, email: user.email, password: user.password, password_confirmation: user.password}
      expect(response).to have_http_status :success
    end
  end
end
