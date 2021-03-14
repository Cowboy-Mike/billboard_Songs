class BillboardSongs::Song
    attr_accessor :title, :artist, :last_week, :peak, :weeks_on_chart

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

end
