require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do 
  	quote = Quote.create(:author => 'Chris McInytre', :saying => 'You only yolo once')
  	get :show, :id => quote.id
  	assert_response :success
  end

  test "quote show page, not found" do
  	get :show, :id => 'Oh Gosh'
  	assert_response :not_found
  end
end
