ActiveAdmin.register_page I18n.t("active_admin.database_schema") do
  content do
    panel "Table" do
      attributes_table_for "Table" do
        row "Name" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "Attribute"
            end
            column max_width: "200px", min_width: "200px" do
              span "Data type"
            end
            column max_width: "200px", min_width: "200px" do
              span "Key type"
            end
            column max_width: "300px", min_width: "300px" do
              span "Value"
            end
          end
        end
        row "Comment" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "body"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "text"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "commentable_type"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target model"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "commentable_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target id"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "user_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "User" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "username"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "email"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "password"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "followees_count"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "followers_count"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "User_Filter" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "user_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "filter_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "Filter" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "filter_data_path"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "S3 storage path"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "filter_name"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "user_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "Follow" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "follower_type"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target model"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "follower_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target id"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "followable_type"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target model"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "followable_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target id"
            end
          end
        end
        row "Like" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "liker_type"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target model"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "liker_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target id"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "likeable_type"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target model"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "likeable_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target id"
            end
          end
        end
        row "Mention" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "mentioner_type"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target model"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "mentioner_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target id"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "mentionable_type"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target model"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "mentionable_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target id"
            end
          end
        end
        row "line_filter" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "filter_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign_key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "order_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "amount"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "check"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "boolean"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "Order" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "total"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "purchased_at"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "datetime"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "canceled_at"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "datetime"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "user_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign_key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "state"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "enum"
            end
            column max_width: "300px", min_width: "300px" do
              span "init, cart, purchased, cancel_requested, cancelled"
            end
          end
        end
        row "Package" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "title"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "price"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "Payment" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "user_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "package_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "state"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "enum"
            end
            column max_width: "300px", min_width: "300px" do
              span "unpaid, paid, cancelled"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "merchant_uid"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "iamport payment uid"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "paid_at"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "datetime"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "canceled_at"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "datetime"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "amount"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "Post" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "title"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "description"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "text"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "user_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign_key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "filter_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign_key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "price"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "likers_count"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "Tag" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "name"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "taggings_count"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "Tagging" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "bigint"
            end
            column max_width: "200px", min_width: "200px" do
              span "primary key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "tag_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign_key"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "taggable_type"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target model"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "taggable_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target id"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "tagger_type"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target model"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "tagger_id"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "integer"
            end
            column max_width: "200px", min_width: "200px" do
              span "foreign key"
            end
            column max_width: "300px", min_width: "300px" do
              span "Polymorphic target id"
            end
          end
        end
        row "" do
          columns do
            column max_width: "200px", min_width: "200px" do
              span "context"
            end
            column max_width: "200px", min_width: "200px" do
              status_tag "string"
            end
            column max_width: "200px", min_width: "200px" do
              span "-"
            end
            column max_width: "300px", min_width: "300px" do
              span "-"
            end
          end
        end
      end
    end
  end
end
