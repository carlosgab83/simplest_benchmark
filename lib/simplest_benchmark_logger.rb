#encoding: utf-8
module SimplestBenchmarkLogger

  def log(msg)
    rails_app ? logger.debug(msg) : custom_logger.write("#{msg}\n")
  end

  def logger
    @logger ||= rails_app ? Rails.logger : custom_logger
  end

  def custom_logger
    File.open("simplest_benchmark.log", "a")
  end

  def rails_app
    @rails_app ||= defined?(Rails)
  end
end
