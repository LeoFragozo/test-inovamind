# frozen_string_literal: true

module Api
  module V1
    class QuotesController < ApplicationController
      def index
        @quotes = Quote.all
        render 'quotes/index', status: :ok
      end
    end
  end
end
