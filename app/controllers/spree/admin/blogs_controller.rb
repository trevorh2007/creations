module Spree
  module Admin
    class BlogsController < ResourceController
      before_action :load_data, except: :index

      def create
      end

      def edit
      end

      def index
        @blogs = Blog.all
      end


    end
  end
end
