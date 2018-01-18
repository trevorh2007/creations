module Spree
  class Spree::BlogController < Spree::StoreController
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
  end
end