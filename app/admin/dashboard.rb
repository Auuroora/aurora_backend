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
        panel "Iteration 1" do
          ul do
            li "1.01	아이디어 회의"
            li "1.02	아이디어 실현 가능성 조사"
            li "1.03	아이디어 선정"
            li "1.04	아이디어 구체화"
            li "1.05	필요한 기술 조사 및 공부"
            li "1.06	선점 시장 조사"
            li "1.07	데이터베이스 스키마 작성"
            li "1.08	API 명세서 작성"
            li "1.09	API 서버와 DB 연동"
            li "1.10	개발용 API 서버 deploy"
            li "1.11	개발용 Database 서버 deploy"
            li "1.12	UI mock up 작성"
            li "1.13	Github repository init(협업 환경 조성)"
            li "1.14	API 서버와 Frontend 연동"
            li "1.15	Database Schema 적용"
            li "9.06	ImageProcessing 기능 조사"
            li "9.07	Hue 보정 기능 구현"
            li "9.08	Saturation 보정 기능 구현"
            li "9.18	Exposure 보정 기능 구현"
            li "9.19	Gamma 보정 기능 구현"
          end
        end
      end
      column do
        panel "Iteration 2" do
          ul do
            li "2.1	Frontend 회원 가입 화면 작성"
            li "2.2	Backend 사용자 정보 생성 로직 구현"
            li "2.3	Frontend API call 구현"
            li "3.1	Frontend 로그인 화면 작성"
            li "3.2	Frontend Session 유지 방법 구현"
            li "3.3	API Server Token 생성 로직 구현"
            li "3.4	API Server 사용자 정보 암호화 구현"
            li "4.1	필터 게시글 목록 UI 디자인"
            li "4.2	필터 게시글 목록 UI 개발"
            li "4.3	필터 게시글 목록 API 개발"
            li "4.4	필터 게시글 조회 통합 테스트"
            li "5.1	필터 게시글 상세보기 UI 디자인"
            li "5.2	필터 게시글 상세보기 UI 개발"
            li "5.3	필터 게시글 상세보기 API 개발"
            li "5.4	필터 게시글 상세보기 통합 테스트"
            li "9.09	Value 보정 기능 구현"
            li "9.10	Vibrance 보정 기능 구현"
            li "9.11	Highlight - tone 보정 기능 구현"
            li "9.20	Grain 보정 기능 구현"
            li "9.21	Vignette 보정 기능 구현"
          end
        end
      end
    end

    columns do
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
      column do
        panel "Iteration 4" do
          ul do
            li "9.01	필터 제작 UI 디자인"
            li "9.02	필터 제작 UI 개발"
            li "9.03	사진 선택 로직 개발"
            li "9.04	React native와 OpenCV 모듈 연동 - Android"
            li "9.05	React native와 OpenCV 모듈 연동 - ios"
            li "10.1	필터 보정값을 preset으로 저장하는 로직 구현"
            li "10.2	필터 프리셋  S3 저장소로 업로드하는 로직 구현"
            li "10.3	필터 정보 저장하는 API 구현"
            li "10.4	사진 S3 저장소로 업로드하는 로직 구현"
            li "10.5	사진 정보 저장 API 구현"
            li "11.1	필터 게시글 작성 UI 디자인"
            li "11.2	필터 게시글 작성 UI 개발"
            li "11.3	필터 목록 API 개발"
            li "11.4	필터 게시글 작성 로직 개발"
            li "11.5	필터 게시글 작성 완료 페이지 UI 디자인"
            li "11.6	필터 게시글 작성 완료 페이지 UI 개발"
            li "11.7	게시물 작성 통합 테스트"
            li "9.14	Brightness 보정 기능 구현"
            li "9.15	Constrast 보정 기능 구현"
            li "12.1	필터 게시글 관리를 할 수 있는 관리자 페이지 UI 개발"
            li "12.2	등록된 모든 필터 게시글 목록을 가져오는 API 구현"
            li "12.4	등록된 모든 필터 게시글을 삭제할 수 있는 API 구현"
            li "12.5	관리자 페이지 필터 관리 기능 통합 테스트"
          end
        end
      end
    end

    columns do
      column do
        panel "Iteration 5" do
          ul do
            li "13.1	신고 관리를 할 수 있는 관리자 페이지 UI 개발"
            li "13.2	등록된 사용자 관련 신고를 가져오는 API 구현"
            li "13.3	등록된 게시물 관련 신고를 가져오는 API 구현"
            li "13.4	등록된 신고를 처리하는 로직 구현"
            li "13.5	관리자 페이지 신고 관리 기능 통합 테스트"
            li "14.1	필터의 보정값 정보를 가져오는 UI 개발"
            li "14.2	필터의 보정값 정보를 가져오는 API 개발"
            li "14.3	필터의 보정값 정보를 excel파일로 변환하는 API 개발"
            li "14.4	가공된 excel파일을 내보내는 API 개발"
            li "14.5	관리자 페이지 필터 보정값 export 기능 통합 테스트"
            li "15.1	사용자 관리를 할 수 있는 관리자 페이지 UI 개발"
            li "15.2	등록된 모든 유저 정보를 가져오는 API 개발"
            li "15.3	등록된 모든 유저 정보를 수정하는 API 개발"
            li "15.4	등록된 모든 유저 정보를 삭제하는 API 개발"
            li "15.5	관리자 페이지 유저 관리 기능 통합 테스트 "
            li "16.1	문의사항 처리를 위한 관리자 페이지 UI 개발 "
            li "16.2	문의하기 처리 관련 API 조사"
            li "16.3	문의하기 관련 API를 이용한 문의하기 처리 로직 개발"
            li "17.1	유저 팔로우 UI 디자인"
            li "17.2	유저 팔로우 UI 개발"
            li "17.3	유저 팔로우/언팔로우 API 개발 "
            li "17.4	팔로우 목록 UI 디자인"
            li "17.5	팔로우 목록 UI 개발"
            li "17.6	팔로우, 팔로워 리스트 가져오는 API 개발"
            li "17.7	팔로우 기능 통합 테스트"
            li "18.1	제작자가 작성한 게시글 목록 UI 디자인"
            li "18.2	제작자가 작성한 게시글 목록 UI 개발"
            li "18.3	작성한 게시글 불러오는 API 개발"
            li "18.4	작성한 게시글 수정하는 API 개발"
            li "18.5	작성한 게시글 삭제하는 API 개발"
            li "18.6	게시글 관리 기능 통합 테스트"
            li "19.1	제작한 필터를 수정하는 로직 개발"
            li "19.2	제작한 필터를 삭제하는 로직 개발"
            li "20.1	유저 정보를 확인하는 UI 디자인"
            li "20.2	유저 정보를 확인하는 UI 개발"
            li "20.3	유저 정보를 불러오는 API  개발"
            li "20.4	유저 정보를 수정하는 API 개발"
            li "20.5	유저 정보 관리 기능 통합 테스트"
            li "9.26	OpenCV Background Processing"
            li "9.27	OpenCL GPU Acceleration"
            li "21.1	신고 신청 UI 디자인"
            li "21.2	신고 신청 UI 개발"
            li "21.3	신고 신청 로직 개발"
            li "21.4	신고 신청 통합 테스트"
          end
        end
      end
    end
  end # content
end
