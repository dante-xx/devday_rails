require File.dirname(__FILE__) + '/../test_helper'

class ImageTest < ActiveSupport::TestCase
  def test_def_item_count
    assert_equal 10, Image.search('ruby')['channel']['item'].size
  end
end
