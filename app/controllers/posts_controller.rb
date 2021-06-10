class PostsController < ApplicationController
    def index
    end
  
  # 追加場所ここから
    def new
      @post = Post.new
    end
end
