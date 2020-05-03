ActiveAdmin.register_page "API Document" do
  content do

    tabs do
      tab "게시글" do
        panel "post" do
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
                  span '-'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('-')
                end
                column max_width: "200px", min_width: "100px" do
                  span "/posts"
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
            row "게시글 생성" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'POST', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Query String'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('title<br/>description<br/>user_id<br/>price<br/>tag_list<br/>')
                end
                column max_width: "200px", min_width: "100px" do
                  span "posts?title=겨울철 필터&description=따뜻한 느낌의 필터를 판매합니다&user_id=1&price=1000&tag_list=겨울, 따뜻한, 감미로운"
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
            row "게시글 삭제" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'DELETE', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts/:id"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Query String'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('title<br/>description<br/>user_id<br/>price<br/>tag_list<br/>')
                end
                column max_width: "200px", min_width: "100px" do
                  span "/posts/1?title=여름철 필터"
                end
              end
            end

          end
        end
      end

      tab "사용자" do
        panel "Post API URL" do
          ul "게시글 생성" do
            li "게시글 생성"
            li status_tag 'active', class: 'important', id: 'status_123', label: 'on'
          end
          ul "게시글 삭제" do
            li "게시글 생성"
          end
          ul "게시글 수정" do
            li "게시글 생성"
          end
          ul "게시글 생성" do
            li "게시글 생성"
          end
        end
      end

      tab "필터" do
        table_for "post" do
          "hello"
        end
      end

    end

  end
end
