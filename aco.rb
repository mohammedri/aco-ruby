#!/usr/bin/env ruby

require "./coordinate.rb"

def parse()
  File.open("bays29.txt") do |f|
  	dimension = ""
  	in_display_data_section = false
  	@coordinates = Array.new

  	f.each_line do |line|
  		if line.strip == "DISPLAY_DATA_SECTION"
  			in_display_data_section = true
  		elsif in_display_data_section
  			line = line.split(" ")
  			@coordinates.push(Coordinate.new(line[1], line[2]))
  		end
  	end
  end

	@coordinates.each do |d|
 		puts "x: #{d.x} y: #{d.y}"
 	end
end

parse()