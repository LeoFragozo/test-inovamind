# frozen_string_literal: true

module Api
  module V1
    class SearchController < ApplicationController
      def index
        unless Quote.tags_exits?(params[:tag_search]).any?
          scrape_quotes = CrawlerService.new(params[:tag_search]).search
          scrape_quotes.each do |scrape|
            Quote.find_or_create_by!(quote: scrape[:quote], author: scrape[:author],
                                     author_about: scrape[:author_about], tags: scrape[:tags])
          end
        end
        @quotes = Quote.tag_search(params[:tag_search])
        render json: @quotes, root: 'quotes'
      end
    end
  end
end
