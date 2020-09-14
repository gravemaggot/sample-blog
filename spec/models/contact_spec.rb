# frozen_string_literal: true

require 'spec_helper'

describe Contact do
  it { should validate_presence_of :email }
end
