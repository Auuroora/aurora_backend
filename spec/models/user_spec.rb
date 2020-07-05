require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    let(:user) { FactoryGirl.build(:user) }

    # email과 username가 존재하는지에 대한 valide 를 체크.
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:password) }
  end
end
