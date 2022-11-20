# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save post without title' do
    post = Post.new
    assert post.save, 'Saved the post without a title'
  end

  test 'should save the post with a title' do
    post = Post.new(title: 'Test')
    assert post.save, 'Saved the post with a title presence'
  end

  test 'should have views as integer' do
    post = Post.new(title: 'Text', views: 'test')
    assert_not post.save, 'Saved the post with a string for a view'
  end
end
