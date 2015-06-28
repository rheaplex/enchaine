require 'spec_helper'

describe Enchaine do
  subject { Enchaine.new }

  describe '#enchaine' do
    let(:input) { SAMPLE_INPUT }
    let(:output) { subject.enchaine input }
    let(:first) { FIRST_TITLE_CONVERTED }
    it 'converts all headers' do
      expect(output.count '#').to eq 5
    end
    it 'converts header properly' do
      expect(output.lines.first).to eq first
    end
  end
end
