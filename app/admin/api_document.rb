ActiveAdmin.register_page I18n.t("active_admin.api_document") do
  content do

    tabs do
      tab "게시글" do
        panel "Post" do
          attributes_table_for "post" do

            row "Role" do
              columns do
                column max_width: "50px", min_width: "100px" do
                  span "Method"
                end
                column max_width: "150px", min_width: "100px" do
                  span "URL"
                end
                column max_width: "100px", min_width: "100px" do
                  span "Parameter Type"
                end
                column max_width: "150px", min_width: "100px" do
                  span "Params"
                end
                column max_width: "200px", min_width: "100px" do
                  span "Example"
                end
              end
            end
            row "모든 게시글 로드" do
              columns do
                column max_width: "50px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts?page=:number"
                end
                column max_width: "100px", min_width: "100px" do
                  status_tag 'Params'
                end
                column max_width: "150px", min_width: "100px" do
                  simple_format('user_info<br/>filter_info<br/>tag_info<br/>like_info<br/>comment_info')
                end
                column max_width: "500px", min_width: "300px" do
                  simple_format('/posts?user_info=true&filter_info=true&tag_info=true&like_info=true&comment_info=true
                                  <br/>------------------Paginate info------------------<br/>data per page : 10<br/>return value : "meta": {
                                                                                                              "current_page": #{current page number},
                                                                                                              "next_page": #{next page number},
                                                                                                              "prev_page": #{previous page number},
                                                                                                              "total_pages": #{count of total page},
                                                                                                              "total_count": #{count of total post}
                                                                                                            }')
                end
              end
            end
            row "특정 게시글 로드" do
              columns do
                column max_width: "50px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts/:id"
                end
                column max_width: "100px", min_width: "100px" do
                  status_tag 'Params'
                end
                column max_width: "150px", min_width: "100px" do
                  simple_format('user_info<br/>filter_info<br/>tag_info<br/>like_info<br/>comment_info')
                end
                column max_width: "300px", min_width: "300px" do
                  simple_format('/posts/1?user_info=true&filter_info=true&tag_info=true&like_info=true&comment_info=true')
                end
              end
            end
            row "게시글 생성" do
              columns do
                column max_width: "50px", min_width: "100px" do
                  status_tag 'POST', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts"
                end
                column max_width: "100px", min_width: "100px" do
                  status_tag 'JSON(BODY)'
                end
                column max_width: "150px", min_width: "100px" do
                  simple_format('user_id (NULL false)<br/>title (NULL false)<br/>description<br/>filter_id<br/>price<br/>tag_list<br/>')
                end
                column max_width: "500px", min_width: "500px" do
                  simple_format('{"post" : <br/>&nbsp;&nbsp;&nbsp;{"user_id": "1",<br/>&nbsp;&nbsp;&nbsp;"title" : "겨울철 필터",<br/>&nbsp;&nbsp;&nbsp;"description" : "따뜻한 필터를 판매",<br/>&nbsp;&nbsp;&nbsp;"filter_id" : "4",<br/>&nbsp;&nbsp;&nbsp;"price" : "1000",<br/>&nbsp;&nbsp;&nbsp;"tag_list" : "따뜻한, 산뜻한, 값싼"}<br/>}')
                end
              end
            end
            row "게시글 삭제" do
              columns do
                column max_width: "50px", min_width: "100px" do
                  status_tag 'DELETE', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts/:id"
                end
                column max_width: "100px", min_width: "100px" do
                  status_tag 'Params'
                end
                column max_width: "150px", min_width: "100px" do
                  simple_format('user_id(NULL false)')
                end
                column max_width: "500px", min_width: "100px" do
                  span "/posts/1&user_id=1"
                end
              end
            end
            row "게시글 수정" do
              columns do
                column max_width: "50px", min_width: "100px" do
                  status_tag 'PUT', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/posts/:id"
                end
                column max_width: "100px", min_width: "100px" do
                  status_tag 'JSON(BODY)'
                end
                column max_width: "150px", min_width: "100px" do
                  simple_format('title<br/>description<br/>filter_id<br/>price<br/>tag_list<br/>')
                end
                column max_width: "500px", min_width: "500px" do
                  simple_format('{"post" : <br/>&nbsp;&nbsp;&nbsp;{"title" : "필터 수정",<br/>&nbsp;&nbsp;&nbsp;"description" : "필터 수정 내용",<br/>&nbsp;&nbsp;&nbsp;"filter_id" : "4",<br/>&nbsp;&nbsp;&nbsp;"price" : "1000",<br/>&nbsp;&nbsp;&nbsp;"tag_list" : "따뜻한, 산뜻한, 값싼"}<br/>}')
                end
              end
            end
            row "게시글 좋아요/좋아요 취소" do
              columns do
                column max_width: "50px", min_width: "100px" do
                  status_tag 'POST', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/likes"
                end
                column max_width: "100px", min_width: "100px" do
                  status_tag 'JSON(BODY)'
                end
                column max_width: "150px", min_width: "100px" do
                  simple_format('liker ("user")<br/>likeable ("post")<br/>likeable_id(post_id)<br/>')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('{"liker" : "user",<br/>"likeable" : "post",<br/>"likeable_id" : "5"}')
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

      tab "댓글" do
        panel "Comment" do
          attributes_table_for "Comment" do
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
            row "게시글의 전체 댓글 로드" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Get', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/comments"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Params'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('commentable_type ("Post")<br/>commentable_id (post_id)')
                end
                column max_width: "200px", min_width: "100px" do
                  span '/comments?commentable_type=Post&commentable_id=1'
                end
              end
            end
            row "댓글 생성" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'POST', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/comments"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON(Body)'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('commentable_type ("Post")<br/>commentable_id (post_id)<br/>body<br/>')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('{"comment" : <br/>&nbsp;&nbsp;{"body" : "게시글 댓글입니다.",<br/>&nbsp;&nbsp;"commentable_type" : "Post",<br/>&nbsp;&nbsp;"commentable_id" : "1"}<br/>}')
                end
              end
            end
          end
        end
      end

      tab "결제" do
        panel "Payment" do
          attributes_table_for "Payment" do
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
            row "결제 상품 페이지" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Get', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/package_page"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Params'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('user_id')
                end
                column max_width: "200px", min_width: "100px" do
                  span '/package_page?user_id=1'
                end
              end
            end
            row "결제 생성" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Post', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/payments"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON(BODY)'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('package_id<br/>user_id')
                end
                column max_width: "200px", min_width: "100px" do
                  span '{ "package_id" : "1", "user_id" : "1" }'
                end
              end
            end
            row "결제 처리" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/payments/complete"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Params'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('merchant_uid<br/>imp_uid')
                end
                column max_width: "200px", min_width: "100px" do
                  span '/payments/complete?merchant_uid=merchant_1102&imp_uid=imp_1102'
                end
              end
            end
            row "결제 완료 페이지" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Get', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/payment_complete_page"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Params'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('payment_id')
                end
                column max_width: "200px", min_width: "100px" do
                  span '/payment_complete_page?payment_id=1'
                end
              end
            end
          end
        end
      end

      tab "주문" do
        panel "Order" do
          attributes_table_for "Order" do
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
            row "장바구니 상품 로드" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Get', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/line_filters"
                end
                column max_width: "150px", min_width: "100px" do
                  span '-'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('-')
                end
                column max_width: "200px", min_width: "100px" do
                  span '/line_filters'
                end
              end
            end
            row "장바구니에 상품 담기" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Post', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/line_filters"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'JSON(BODY)'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('filter_id<br/>post_id<br/>amount (필터 가격)')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('{"line_filter" : <br/>&nbsp;&nbsp;{"filter_id" : "1",<br/>&nbsp;&nbsp;"post_id" : "1"<br/>&nbsp;&nbsp;"amount" : "1000"}<br/>}')
                end
              end
            end
            row "장바구니 상품 체크하기" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Put', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/line_filters/:id"
                end
                column max_width: "150px", min_width: "100px" do
                  span '-'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('-')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('/line_filters/1')
                end
              end
            end
            row "장바구니에서 상품 삭제" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'DELETE', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/line_filters/:id"
                end
                column max_width: "150px", min_width: "100px" do
                  span '-'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('-')
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('/line_filters/1')
                end
              end
            end
            row "내 주문목록 보기" do
              columns do
                column max_width: "150px", min_width: "100px" do
                  status_tag 'GET', class: 'primary'
                end
                column max_width: "150px", min_width: "100px" do
                  span "/orders"
                end
                column max_width: "150px", min_width: "100px" do
                  status_tag 'Params'
                end
                column max_width: "200px", min_width: "100px" do
                  simple_format('state (cart, purchased, cancel_requested, cancelled)')
                end
                column max_width: "300px", min_width: "300px" do
                  simple_format('{"state" : "cart"}
                                  <br/>------------------State info------------------<br/>
                                  - state 변수 없을 경우 -> 모든 주문내역 로드<br/>
                                  - state 변수 cart -> 장바구니 주문내역 로드<br/>
                                  - state 변수 purchased -> 구매한 주문내역 로드<br/>
                                  - state 변수 cancel_requested -> 환불 요청한 주문내역 로드<br/>
                                  - state 변수 cancelled -> 환불된 주문내역 로드')
                end
              end
            end
          end
        end
      end
    end
  end
end
