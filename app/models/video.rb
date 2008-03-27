class Video < DaumAPI
  def self.search(keyword)
    get_json('/search/vclip', keyword)
  end
end


