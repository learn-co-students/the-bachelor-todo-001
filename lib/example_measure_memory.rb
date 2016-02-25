=begin 
* Ruby is slow due to memory consumption and garbage collection
* Ruby has significant memory overhead
* 2.1 and later versions far faster
* Raw performance of all modern Ruby interpreters roughly the same

* Optimize Ruby memory consumption by reducing memory footprint. Will reduce garbage colection
 time.
* Turning off GC will increase peak memory cosumption. 
=end

# This code requires 2G of data to process 1G.
require "benchmark"

num_rows = 100000
num_cols = 10
data = Array.new(num_rows) {
  Array.new(num_cols) { "x" * 1000}  
}

puts "%dM" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)

GC.disable
time = Benchmark.realtime do
  # 1G memory used here with csv, this stores intermediate results in memory.
  csv = data.map { |row|
    row.join(", ")
  }.join("\n")
end

puts "%dM" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
puts time.round(2)

=begin
ON TERMINAL, RUN rbenv shell 2.2.0, then this file
=end

# Following program to optimize the code and minimize the 1G

# require "benchmark"

num_rows = 100000
num_cols = 10
data = Array.new(num_rows) {
  Array.new(num_cols) { "x" * 1000}  
}


























#