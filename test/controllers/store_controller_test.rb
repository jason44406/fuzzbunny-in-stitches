require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    # Selectors that start with:
    #   - # match on id attribute
    #   - . match on class attributes
    #   - no prefix match on element names
    assert_select 'nav.side_nav a', minimum: 4
    assert_select 'main ul.catalog li', Product.all.count
    assert_select 'h2', 'Title1'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
