module CustomHelpers
  def csv_data(file)
    csv_data = File.read(File.join('data', file))
    hash = CSV.new(csv_data, :headers => true, :header_converters => :symbol)
    return hash.to_a.map { |row| row.to_hash }
  end
end 