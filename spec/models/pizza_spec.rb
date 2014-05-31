require 'spec_helper'

describe Pizza do
  subject(:pizza) { build :pizza }

  it { is_expected.to be_valid }

  it { is_expected.to respond_to :type }
end
