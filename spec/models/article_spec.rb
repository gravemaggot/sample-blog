# frozen_string_literal: true

require 'spec_helper'

describe Article do
  describe 'validations' do 
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe 'assotiations' do
    it { should have_many :comments }
  end

  describe '#subject' do
    it 'returns the article title' do
      # create new article
      @article = create(:article, title: 'Lorem Ipsum')

      # assert checks
      expect(@article.subject).to eq 'Lorem Ipsum'
    end
  end
end
