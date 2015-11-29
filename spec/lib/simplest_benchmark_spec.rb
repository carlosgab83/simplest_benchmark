# encoding: utf-8

require 'simplest_benchmark'

include SimplestBenchmark

RSpec.describe SimplestBenchmark do

		context "with simple calls" do

			it "returns time_spent > 0" do
				sb_begin("iteration")

					10.times {|i| i*10}

				t = sb_end("iteration")
				expect(t).to be > 0
			end

			it "logs correctly" do
				pending("not implemented yet.")
    		fail
			end
		end

		context "with nested calls" do
			it "returns coherent time spent" do
				t,t0 = 0

				sb_begin("iteration1")

					10.times {|i|
						i*10

						sb_begin("iteration2")

						20.times{|j|
							j*10
						}

						t0 = sb_end("iteration2")
					}

				t = sb_end("iteration")
				expect(t).to be > t0
			end

			it "logs correctly" do
				pending("not implemented yet.")
    		fail
			end
		end
end
