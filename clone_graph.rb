def deep_clone(obj)
  obj.clone.tap do |new_obj|
    new_obj.each do |key, val|
      new_obj[key] = deep_clone(val) if val.is_a?(Hash)
    end
  end
end