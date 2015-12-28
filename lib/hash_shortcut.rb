module HashShortcut
  VERSION = "0.0.1"
end

class Array
  def to_proc
    raise ArgumentError.new "wrong number of arguments" unless length == 1
    proc { |obj| obj[first] }
  end
end
