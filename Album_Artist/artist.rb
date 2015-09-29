class Artist
  def initialize(name)
    @artist_name = name
    @albums = []
  end

  def catalog
    @albums
  end

  def add_album(add)
    @albums << add
  end

  def name
    @artist_name
  end

  def set_discount(down)
    @albums.each do |x|
      x.set_discount(down)
    end
  end
end
