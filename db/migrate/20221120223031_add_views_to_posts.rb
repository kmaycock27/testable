# frozen_string_literal: true

# This is the new migration for adding the views into the posts
class AddViewsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :views, :integer, default: 0
  end
end
