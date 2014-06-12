require 'spec_helper'

describe Pizza do
  subject(:pizza) { build :pizza }

  it { is_expected.to be_valid }

  it { is_expected.to have_db_column(:type).of_type(:string ) }
  it { is_expected.to have_db_column(:num ).of_type(:integer) }
end
