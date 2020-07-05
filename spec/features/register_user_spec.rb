require 'rails_helper'

RSpec.feature "관리자 로그인 테스트", type: :feature do
  let(:admin_user) { FactoryGirl.build(:admin_user)}

  scenario "Login admin page" do
     visit "/admin/login"     # 로그인 페이지
     email = admin_user.email
     password = admin_user.password

     # 가입 폼에 데이터를 입력하는 시뮬레이션
     # input 의 value name에 (name: 'user[email]'), 값을 입력
     fill_in name: 'admin_user[email]', with: email # email input field
     fill_in name: 'admin_user[password]', with: password # password input field

     # 버튼을 클릭한다. 버튼의 text를 인자로 넘겨줌
     click_button '로그인'

     # 테스트 : 로그인에 성공할 경우 어드민 홈으로 이동
     expect(current_path).to eq(admin_root_path)
  end
end
