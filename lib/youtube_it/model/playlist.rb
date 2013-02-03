class YouTubeIt
  module Model
    class Playlist < YouTubeIt::Record
      attr_reader :title, :description, :summary, :playlist_id, :xml, :published, :response_code
      def videos(options = {"max-results" => 50, "start-index" => 1})
        YouTubeIt::Parser::VideosFeedParser.new("http://gdata.youtube.com/feeds/api/playlists/#{playlist_id}?v=2&max-results=#{options['max-results']}&start-index=#{options['start-index']}").parse_videos
      end
    end
  end
end

