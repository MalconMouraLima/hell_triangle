require 'json'

class ArrayConvert
  def self.from_array_string(array_string)
    return [] if array_string.empty?
    JSON.parse array_string
  end
end
