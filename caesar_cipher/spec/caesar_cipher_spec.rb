# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe '#caesar_cipher' do
  context 'when a letter is shifted by a' do
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

  context 'when the shifted letter goes out of bounds' do
    it 'rewinds to the start of the alphabet' do
      expect(caesar_cipher('z', 5)).to eq('e')
    end

    it 'rewinds to the end of the alphabet' do
      expect(caesar_cipher('e', -5)).to eq('z')
    end
  end

  context 'when special characters are passed in' do
    it 'it doesn\'t change them' do
      expect(caesar_cipher('%$#@^&*()-+= \|/', 10)).to eq('%$#@^&*()-+= \|/')
    end
  end
end
