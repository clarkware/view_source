class Object
  def source_for_method(method)
    location = self.method(method).source_location
    `mate #{location[0]} -l #{location[1]}` if location
    location
  end
  
  def grep_methods(pattern)
    methods.grep pattern
  end
end