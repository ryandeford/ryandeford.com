require 'spec_helper'
include ApplicationHelper

describe 'General Tests' do
  describe 'Application Helper' do
    describe 'site_title method behavior' do
      let(:prefix) { 'Ryan DeFord' }

      describe 'give a null title suffix' do
        specify { site_title(nil).should eq prefix }
      end

      describe 'give an empty title suffix' do
        specify { site_title('').should eq prefix }
      end

      describe 'give a title suffix' do
        let(:suffix) { 'abc' }
        specify { site_title(suffix).should eq sprintf('%s | %s', prefix, suffix) }
      end 
    end
  end
end
