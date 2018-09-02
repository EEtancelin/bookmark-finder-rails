class Api::V1::BookmarksController < Api::V1::BaseController

    def create
        @bookmark = Bookmark.new(bookmark_params)
        if @bookmark.save
            render json: {created: true} 
        else
            render_error
        end
    end

    def bookmark_params
        params.require(:bookmark).permit(:url, :description, :title, :rating, :thumbnail_url)
    end

end
