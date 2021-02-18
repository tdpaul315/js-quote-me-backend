class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    if params[:quote_id]
    @quote = Quote.find(params[:quote_id])
    @comments = @quote.comments 
    else 
   @comments = Comment.all 
    end
    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # POST /comments
  def create
    
    if params[:quote_id]
      @quote = Quote.find(params[:quote_id])
      @comment = @quote.comments.build(comment_params)
    else 
      @comment = Comment.new(comment_params)
    end

     if @comment.save
      render json: @comment, status: :created, location: @comment
     else
      render json: @comment.errors, status: :unprocessable_entity
     end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:commenter, :content, :quote_id)
    end
end
