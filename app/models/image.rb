class Image < DaumAPI
  def self.search(keyword)
    get_json('/search/image', keyword)
  end
end

