# frozen_string_literal: true

module Api
  module V1
    class QuotesController < ApplicationController
      def index
        @quotes = Quote.all
        render json: @quotes, root: 'quotes'
      end
    end
  end
end
