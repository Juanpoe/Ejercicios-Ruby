class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    partes = @line.split(":")
    partes[1]
    partes[1].strip
  end

  def log_level
    partes = @line.split(":")
    partes[0].gsub("[", "").gsub("]", "").strip.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end


LogLineParser.new('[WARNING]: Disk almost full').message
LogLineParser.new('[WARNING]: Disk almost full').log_level
LogLineParser.new('[WARNING]: Disk almost full').reformat
