class Scraper
  def load_page
    Net::HTTP.get(self.url)
  end

  def url
    raise "Implement me in child class"
  end
end

class Amazon < Scraper
  def url
    'amazon.com'
  end
end

class IMDB < Scraper
  def url
    'imdb.com'
  end
end