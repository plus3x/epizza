require 'spec_helper'

describe Order do
  subject(:order) { build :order }

  it { is_expected.to be_valid }

  # FIX: Shoulda-matchers write - is a has_many join, is't true
  # it { is_expected.to have_and_belong_to_many :pizzas }
  it { is_expected.to accept_nested_attributes_for(:pizzas).allow_destroy(true) }

  it { is_expected.to have_db_column(:name ).of_type(:string) }
  it { is_expected.to have_db_column(:email).of_type(:string) }
  it { is_expected.to have_db_column(:phone).of_type(:string) }
end