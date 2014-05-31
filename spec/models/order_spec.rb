require 'spec_helper'

describe Order do
  subject(:order) { build :order }

  it { is_expected.to be_valid }

  # FIX: Shoulda-matchers write - is a has_many join, is't true
  # it { is_expected.to have_and_belong_to_many :pizzas }

  it { is_expected.to respond_to :name  }
  it { is_expected.to respond_to :email }
  it { is_expected.to respond_to :phone }
end