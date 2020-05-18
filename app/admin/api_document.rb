ActiveAdmin.register_page I18n.t("active_admin.api_document") do
  content do

    tabs do
      tab "게시글" do
        panel "Post" do
          attributes_table_for "post" do

            row "Role" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  span "Method"
                end
                column max_width: "150px", min_width: "100px" do
                  span "URL"
                end
                column max_width: "150px", min_width: "100px" do
                  span "Parameter Type"
                end
                column max_width: "200px", min_width: "100px" do
                  span "Params"
                end
                column max_width: "200px", min_width: "100px" do
                  span "Example"
                end
              end
            end
            row "모든 게시글 로드" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('user_info<br/>filter_info<br/>tag_info')
                end
                column max_width: "300px", min_width: "300px" do
                  simple_format('base_url: /posts<br/>optional_parameter: {"user_info" : "true", "filter_info" : "true", "tag_info" : "true", "like_info" : "true"}')
                end
              end
            end
            row "특정 게시글 로드" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts/:id"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('user_info<br/>filter_info<br/>tag_info<br/>like_info')
                end
                column max_width: "300px", min_width: "300px" do
                  simple_format('base_url: /posts/1<br/>optional_parameter: {"user_info" : "true", "filter_info" : "true", "tag_info" : "true", "like_info" : "true"}')
                end
              end
            end
            row "게시글 생성" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'POST', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('title<br/>description<br/>filter_id<br/>price<br/>tag_list<br/>')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('{"post" : <br/>&nbsp;&nbsp;{"title" : "겨울철 필터",<br/>&nbsp;&nbsp;"description" : "따뜻한 필터를 판매",<br/>&nbsp;&nbsp;"filter_id" : "4",<br/>&nbsp;&nbsp;"price" : "1000",<br/>&nbsp;&nbsp;"tag_list" : "따뜻한, 산뜻한, 값싼"}<br/>}')
                end
              end
            end
            row "게시글 삭제" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'DELETE', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts/:id"
                end
                column max_width: "150px", min_width: "100px" do
                  span '-'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('-')
                end
                column max_width: "200px", min_width: "100px" do
                  span "/posts/1"
                end
              end
            end
            row "게시글 수정" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'PUT', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts/:id"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('title<br/>description<br/>price<br/>tag_list<br/>')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('{"post" : <br/>&nbsp;&nbsp;{"title" : "겨울철 필터 수정",<br/>&nbsp;&nbsp;"description" : "따뜻한 필터를 판매",<br/>&nbsp;&nbsp;"price" : "1000",<br/>&nbsp;&nbsp;"tag_list" : "따뜻한, 산뜻한, 값싼"}<br/>}')
                end
              end
            end
            row "게시글 좋아요/좋아요 취소" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'POST', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/likes"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('liker ("user", 소문자)<br/>likeable ("post", 소문자)<br/>likeable_id(post_id)<br/>')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('base_url: /likes<br/>optional_parameter: {"liker" : "user", "likeable" : "post", "likeable_id" : "5"}')
                end
              end
            end

          end
        end
      end

      tab "사용자" do
        panel "User" do
          attributes_table_for "User" do
            row "Role" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  span "Method"
                end
                column max_width: "150px", min_width: "100px" do
                  span "URL"
                end
                column max_width: "150px", min_width: "100px" do
                  span "Parameter Type"
                end
                column max_width: "200px", min_width: "100px" do
                  span "Params"
                end
                column max_width: "200px", min_width: "100px" do
                  span "Example"
                end
              end
            end
            row "회원가입" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Post', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/users"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag "Form Data"
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('email<br/>username<br/>password<br/>password_confirmation<br/>')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('email=test@test<br/>username=tester<br/>password=123qwe<br/>password_confirmation=123qwe')
                end
              end
            end
            row "로그인" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Post', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/auth/login"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag "JSON"
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('email<br/>password')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('{"email" : "test@test", "password" : "123qwe"}')
                end
              end
            end
            row "내 정보 로드(마이페이지)" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/user/my"
                end
                column max_width: "150px", min_width: "100px" do
                  simple_format('-')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('-')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('/user/my')
                end
              end
            end
            row "내 게시글 로드" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/mypost"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag "JSON"
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('user_info<br/>filter_info<br/>tag_info<br/>like_info')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('base_url: /mypost<br/>optional_parameter: {"user_info" : "true", "filter_info" : "true", "tag_info" : "true", "like_info" : "true"}')
                end
              end
            end
            row "내 필터 로드" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/myfilter"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag "JSON"
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('user_info')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('base_url: /myfilter<br/>optional_parameter: {"user_info" : "true", "filter_info" : "true", "tag_info" : "true", "like_info" : "true"}')
                end
              end
            end
          end
        end
      end

      tab "필터" do
        panel "Filter" do
          attributes_table_for "Filter" do
            row "Role" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  span "Method"
                end
                column max_width: "150px", min_width: "100px" do
                  span "URL"
                end
                column max_width: "150px", min_width: "100px" do
                  span "Parameter Type"
                end
                column max_width: "200px", min_width: "100px" do
                  span "Params"
                end
                column max_width: "200px", min_width: "100px" do
                  span "Example"
                end
              end
            end
            row "필터 생성" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'POST', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/filters"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('filter_name<br/>filter_data_path')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('{"filter" : <br/>&nbsp;&nbsp;{"filter_name" : "아름다운 필터",<br/>&nbsp;&nbsp;"filter_data_path" : "S3_storage_path"}<br/>}')
                end
              end
            end
            row "전체 필터 로드" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/filters"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('user_info')
                end
                column max_width: "300px", min_width: "300px" do
                  simple_format('base_url: /filters<br/>optional_parameter: {"user_info" : "true"}')
                end
              end
            end
            row "특정 필터 로드" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/filters/:id"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('user_info')
                end
                column max_width: "300px", min_width: "300px" do
                  simple_format('base_url: /filters/1<br/>optional_parameter: {"user_info" : "true"}')
                end
              end
            end
            row "필터 삭제" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'DELETE', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/Filters/:id"
                end
                column max_width: "150px", min_width: "100px" do
                  span '-'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('-')
                end
                column max_width: "200px", min_width: "100px" do
                  span "/filters/1"
                end
              end
            end
            row "필터 수정" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'PUT', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/filters/:id"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag "JSON"
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('filter_name<br/>filter_data_path')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('{"filter" : <br/>&nbsp;&nbsp;{"filter_name" : "아름다운 필터 수정",<br/>&nbsp;&nbsp;"filter_data_path" : "S3_storage_path"}<br/>}')
                end
              end
            end
          end
        end
      end

    end

  end
end
