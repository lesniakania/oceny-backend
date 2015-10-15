require 'rails_helper'

describe Api::SubmissionsController do
  describe 'GET pending' do
    it 'returns 200' do
      get :pending
      expect(response).to be_success
    end

    it 'returns pending submissions' do
    end
  end

  describe 'GET evaluated' do
    it 'returns 200' do
      get :evaluated
      expect(response).to be_success
    end

    it 'returns evaluated submissions' do
    end
  end

  describe 'GET rejected' do
    it 'returns 200' do
      get :rejected
      expect(response).to be_success
    end

    it 'returns rejected submissions' do
    end
  end

  describe 'GET show' do
    it 'returns 200' do
      get :show, id: 1
      expect(response).to be_success
    end
  end
end
