#!/usr/bin/env ruby

Dir.glob("_*.html") do |filename|  
    # will match any file in any child directory with a single lower-case letter extension
    page = "../" + filename[1..-1]
    header = File.read("header.html")
    footer = File.read("footer.html")
    File.open(page, 'w') do |pagefile|
      pagecontents = File.read(filename)
      pagefile.write(header + pagecontents + footer)
    end
end  
