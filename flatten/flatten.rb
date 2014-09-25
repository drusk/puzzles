# NOTE: we could just return array.flatten, but this is an exercise
# so that would defeat the purpose.

def flatten(array)
  flattened = []
  _flatten(array, flattened)
  return flattened
end

def _flatten(input, flattened)
  input.each do |item|
    if item.instance_of?(Array)
      _flatten(item, flattened)
    else
      flattened.push(item)
    end
  end
end