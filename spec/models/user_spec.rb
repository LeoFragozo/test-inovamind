# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of(:login) }
  it { is_expected.to validate_uniqueness_of(:login) }
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_length_of(:password).with_minimum(8) }
  it { is_expected.to have_field(:login) }
  it { is_expected.to have_field(:password) }
end
