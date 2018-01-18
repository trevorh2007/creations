module Spree
  module Admin
    class Spree::Admin::BlogController < ResourceController
      before_action :set_blog, only: [:show, :edit, :update, :destroy]
      def index
        @blogs = Blog.all
      end

      def show
        @blog = Blog.find(params[:id])
        # if logged_in?(:site_admin) || @blog.Published?
          # @blog = Blog.includes(:comments).friendly.find(params[:id])
          # @comment = Comment.new
    
          # @page_title = @blog.title
          # @seo_keywords = @blog.body
        # else
          # redirect_to blogs_path, alert: "You are not authorized to view this page"
        # end
      end

      # GET /blogs/new
      def new
        @blog = Blog.new
      end

      def create
        @blog = Blog.new(blog_params)

        respond_to do |format|
          if @blog.save
            format.html { redirect_to admin_blog_index_url, notice: 'Blog saved.' }
          else
            format.html { render :new }
          end
        end
      end

      # GET /blogs/1/edit
      def edit
      end

      def update
        respond_to do |format|
          if @blog.update(blog_params)
            format.html { redirect_to @blog, notice: 'Blog updated.' }
          else
            format.html { render :edit }
          end
        end
      end

      def destroy
        @blog.destroy
        respond_to do |format|
          format.html { redirect_to blogs_url, notice: 'Post was removed.' }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_blog
        @blog = Blog.friendly.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def blog_params
        params.require(:blog).permit(:title, :body, :notes, :status, :topic_id)
      end

    end
  end
end
