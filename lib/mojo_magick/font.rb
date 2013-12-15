module MojoMagick

  class Font

    attr_accessor :name, :family, :style, :stretch, :weight, :glyphs

    def valid?
      !(name.nil?)
    end

    def initialize(property_hash = {})
      property_hash.symbolize_keys!
      [:name, :family, :style, :stretch, :weight, :glyphs].each do |f|
        setter = "#{f}="
        self.send(setter, property_hash[f])
      end
    end

  end
end
