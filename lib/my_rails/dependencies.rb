class Object
  def self.const_missing(c)
    # TODO: part 3
    require c.to_underscore
    Object.const_get(c)
  end
end
