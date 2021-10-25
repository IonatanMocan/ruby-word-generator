module WordsImporterModule
  def words_importer_module(file_name)
    result = []
    file = File.read(@from_file)
    file.each_line do |line|
      result << line.downcase.chomp if line.chomp.length > 0
    end
    result
  end
end