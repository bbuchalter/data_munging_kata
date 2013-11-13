class BaseParser
  def initialize(file_path, data_class)
    @file_path = file_path
    @data_class = data_class
  end

  def build_data_structure
    parse_file.collect { |raw_data| data_class.send(:new, raw_data) }
  end

  private

  attr_reader :file_path, :data_class

  def parse_file
    data = []
    header_row = nil

    File.open(file_path, 'r').each_with_index do |line, i|
      header_row = i if line.strip == expected_header
      if header_row and i > header_row
        split_line = line.split(" ")
        data << split_line if valid_data(split_line)
      end
    end

    data
  end
end