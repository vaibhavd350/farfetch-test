require 'rails_helper'

describe SocialNetworkController do
  describe '#index' do
    before do
    end

    context 'can see the output' do

      it 'responds with a valid content type' do
        get :index
        expect(response.content_type).to include('application/json')
      end

      it 'responds with a valid json object' do
        get :index
        expect { JSON.parse(response.body) }.not_to raise_error
      end

      it "returns JSON should have valid keys" do
        get :index
        body = JSON.parse(response.body)
        expect(body.keys).to contain_exactly("twitter", "facebook", "instagram")
      end

    end

  end
end
