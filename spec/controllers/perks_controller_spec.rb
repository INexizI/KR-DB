require 'rails_helper'

RSpec.describe PerksController, type: :controller do
  describe '#index' do
    subject! { get :index }
    it { expect(response).to have_http_status :success }
  end
end
