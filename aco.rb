#!/usr/bin/env ruby

require "./coordinate.rb"
require 'byebug'

def parse_dataset()
  File.open("bays29.txt") do |f|
  	dimension = ""
  	in_display_data_section = false
  	@coordinates = Array.new

  	f.each_line do |line|
  		if line.strip == "DISPLAY_DATA_SECTION"
  			in_display_data_section = true
  		elsif in_display_data_section
  			line = line.split(" ")
  			@coordinates.push(Coordinate.new(line[1].to_i, line[2].to_i))
  		end
  	end
  end

	@coordinates.each do |d|
 	end
end

def get_euclidean_distance(acity, bcity)
	return (Math.sqrt((bcity.y - acity.y)**2 + (bcity.x - acity.x)**2)).round(2)
end



parse_dataset()