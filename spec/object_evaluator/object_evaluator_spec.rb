require 'spec_helper'

RSpec.describe ObjectPredicates::ObjectEvaluator do
  subject { described_class }

  it { is_expected.to be_a(Class) }
end
