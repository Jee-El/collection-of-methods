# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe '#caesar_cipher' do
  context 'shifts a letter by a' do
    context 'positive integer (5)' do
      it 'returns "m" for "h"' do
        expect(caesar_cipher('h', 5)).to eq('m')
      end

      it 'returns "M" for "H"' do
        expect(caesar_cipher('H', 5)).to eq('M')
      end
    end

    context 'negative integer (-5)' do
      it 'returns "h" for "m"' do
        expect(caesar_cipher('m', -5)).to eq('h')
      end

      it 'returns "H" for "M"' do
        expect(caesar_cipher('m', -5)).to eq('h')
      end
    end
  end

  context 'rewinds back' do
    it 'to the start of the alphabet' do
      expect(caesar_cipher('z', 5)).to eq('e')
    end

    it 'to the end of the alphabet' do
      expect(caesar_cipher('e', -5)).to eq('z')
    end
  end

  context 'doesn\'t affect special characters' do
    it 'returns "%$#@^&*()-+= \|/" for "%$#@^&*()-+= \|/"' do
      expect(caesar_cipher('%$#@^&*()-+= \|/', 10)).to eq('%$#@^&*()-+= \|/')
    end
  end
end
