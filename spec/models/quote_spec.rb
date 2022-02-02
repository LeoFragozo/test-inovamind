# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Quote, type: :model do
  it { is_expected.to have_field(:quote) }
  it { is_expected.to have_field(:author) }
  it { is_expected.to have_field(:author_about) }
  it { is_expected.to have_field(:tags) }
end
