class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment successfully created."
      respond_to do |format|
        format.html { redirect_to @post }
        format.json { render json: { status: :success, comment: @comment } }
      end
    else
      respond_to do |format|
        format.html { flash[:notice] = @comment.errors.full_messages.join(',') ; render 'show' }
        format.json { render json: { status: :error, error: @comment.errors.full_messages.join(',') } }
      end
    end
  end
  

  
def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  flash[:notice] = "Comment successfully deleted."
  respond_to do |format|
    format.html { redirect_to post_path(@comment.post) }
    format.json { render json: { status: :success } }
  end
end
end
  
  private
    def comment_params
      params.require(:comment).permit(:comments)
    end
  