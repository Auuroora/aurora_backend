ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span 'Aurora 어드민 페이지입니다.'
        # small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Posts" do
          ul do
            Post.all.order(created_at: :desc).limit(5).map do |post|
              li link_to(post.title, admin_post_path(post))
            end
          end
        end
      end
      column do
        panel "Iteration 3" do
          ul do
            li "6.1	필터 미리보기 UI 디자인	0.5"
            li "6.1	필터 미리보기 UI 디자인	0.5"
            li "6.2	필터 미리보기 UI 개발	1.5"
            li "6.3	갤러리에서 사진 불러오는 로직 구현	1.5"
            li "6.4	Watermark 로직 구현	1.5"
            li "6.5	필터 적용 로직 구현	1.0"
            li "6.6	필터 미리보기 기능 통합 테스트	1.0"
            li "7.1	결제 API 조사	0.5"
            li "7.2	결제 API를 이용한 결제 로직 구현	1.5"
            li "7.3	결제 정보를 DB에 저장	1.0"
            li "8.1	필터 적용 화면 작성	1.0"
            li "8.2	사진 촬영 로직 구현	1.5"
            li "8.3	사진 촬영 화면 구상	1.0"
            li "8.4	소유한 필터 목록 가져오는 API 구현	1.5"
            li "8.5	필터 적용 기능 통합 테스트	1.0"
            li "9.12	Shadow - tone 보정 기능 구현	2.5"
            li "9.13	Temperature 보정 기능 구현	2.0"
            li "9.14	Brightness 보정 기능 구현	2.0"
            li "9.22	Fade 보정 기능 구현	2.0"
            li "9.23	Resize 보정 기능 구현	2.0"
            li "9.24	Cut 보정 기능 구현	2.0"
            li "9.25	OpenCV Parallel Processing	1.5"
          end
        end
      end

    end
  end # content
end
