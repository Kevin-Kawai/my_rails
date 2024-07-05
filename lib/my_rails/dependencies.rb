class Object
  def self.const_missing(c)
    f = MyRails.to_underscore(c.to_s)
    # TODO: part 3
  end
end
