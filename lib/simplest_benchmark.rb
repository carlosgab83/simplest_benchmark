#encoding: utf-8

require_relative 'simplest_benchmark_logger.rb'

module SimplestBenchmark
  include SimplestBenchmarkLogger

  attr_accessor :miliseconds, :logger, :rails_app

	def sb_begin(msg = "", other_info = "")
    time        = Time.now
    miliseconds << time.to_f
    log "SimplestBenchmark\t#{time}\t#{time.to_f}\tBEGIN\t#{miliseconds.count-1}\t#{msg}\t\t#{other_info}"
  end

  def sb_end(msg, other_info="")
    time       = Time.now
    time_spent = time.to_f - miliseconds.last
    miliseconds.pop
    log "SimplestBenchmark\t#{time}\t#{time.to_f}\tEND\t#{miliseconds.count}\t#{msg}\t#{time_spent}\t#{other_info}"
    return time_spent
  end

  def miliseconds
    @miliseconds ||= []
  end
end