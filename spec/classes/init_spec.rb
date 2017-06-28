require 'spec_helper'
describe 'bareos' do
  it { is_expected.to compile.with_all_deps }

  context 'with defaults for all parameters' do
    it { should contain_class('bareos') }
  end
end
