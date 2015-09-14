class Getter
  def get_in(data, path)
    if data[path[0]].class != Hash
      return data[path[0]]
    end
    get_in(data[path.shift], path)
  end
end

data = { an_outer: "hash",
  with_another: {
    inner: "hash",
    and_another: {
      inside: {
        new: {
          again: "found it"
        }
      }
    }
  }
}
puts Getter.new.get_in(data, [:with_another, :and_another, :inside, :new, :again, :test])
