# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

PREFIX = ['굉장히', '아주', '너무나', '매우']
CONTENT = ['아름다운', '멋진', '예쁜', '신비로운', '감성적인', '따뜻한', '감미로운', '산뜻한']
PRICES = [1000, 2000, 3000, 4000, 5000]
TAGS = ["산뜻한", "멋진", "아름다운", "감미로운", "놀라운", "필터", "이쁜", "예쁜"]
DESCRIPTION = '대한민국의 국민이 되는 요건은 법률로 정한다. 국무회의는 정부의 권한에 속하는 중요한 정책을 심의한다. 이 헌법은 1988년 2월 25일부터 시행한다. 다만, 이 헌법을 시행하기 위하여 필요한 법률의 제정·개정과 이 헌법에 의한 대통령 및 국회의원의 선거 기타 이 헌법시행에 관한 준비는 이 헌법시행 전에 할 수 있다.
중앙선거관리위원회는 대통령이 임명하는 3인, 국회에서 선출하는 3인과 대법원장이 지명하는 3인의 위원으로 구성한다. 위원장은 위원중에서 호선한다.
'
FILTER_DATA_PATH = [
  '1592302889084/ba792835-0323-5ba0-eae8-dbdc79013e5e.jpg',
  '1589711673621/80ff3c65-add5-f300-3fec-495ec19b38e2.jpg',
  '1589711804393/00fd9224-3de3-7a81-c853-92eafb50c613.jpg',
  '1590400637592/a9161b82-69a8-f461-8875-a4969e66f70f.jpg',
  '1590903993754/903f6403-7def-88c8-369e-b7121c4057fb.jpg',
  '1592138421671/da5cf500-c3fe-1212-8f66-48f98b6bde45.jpg',
  '1590932528604/eccfe415-96b9-d974-05c9-650498132280.jpg',
  '1592170915783/9b6ae276-920c-36a9-a0c3-9315e602b28f.jpg'
]

FILTER_NAME = [
  '1592302889084/ba792835-0323-5ba0-eae8-dbdc79013e5e.json',
  '1589711673621/80ff3c65-add5-f300-3fec-495ec19b38e2.json',
  '1589711804393/00fd9224-3de3-7a81-c853-92eafb50c613.json',
  '1590400637592/a9161b82-69a8-f461-8875-a4969e66f70f.json',
  '1590903993754/903f6403-7def-88c8-369e-b7121c4057fb.json',
  '1592138421671/da5cf500-c3fe-1212-8f66-48f98b6bde45.json',
  '1590932528604/eccfe415-96b9-d974-05c9-650498132280.json',
  '1592170915783/9b6ae276-920c-36a9-a0c3-9315e602b28f.json'
]

def generate_post
  Filter.all.each do |filter|
    post = Post.create(title: "#{PREFIX.sample} #{CONTENT.sample} #{"필터"}", description: Faker::Lorem.sentence(word_count: 200), user_id: rand(2..7), filter_id: filter.id, price: "#{PRICES.sample}", likers_count: rand(2000), tag_list: TAGS)
    rand(100).times do
      Comment.create(body: "#{CONTENT.sample} 필터이군요!", user_id: User.first.id, commentable_type: "Post", commentable_id: post.id)
      puts "Comment 생성"
    end
  end
end

generate_post
