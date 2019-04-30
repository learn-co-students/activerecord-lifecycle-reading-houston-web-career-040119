class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		#byebug
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create

	  @post = Post.create(params.require(:post).permit(:title, :description))
	  #@post.save
	  redirect_to posts_path(@post)
	end

	def edit
	  @post = Post.find(params[:id])
	end

	def update
		
	  @post = Post.find(params[:id])
		@post.update(params.require(:post).permit(:title, :description))
		
	
		# byebug
	  redirect_to @post
	end
private


	
end

# t.string   "title"
# t.text     "description"
# t.datetime "created_at",  null: false
# t.datetime "updated_at",  null: false
# t.boolean  "post_status"
# t.integer  "author_id"