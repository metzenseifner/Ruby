#!/usr/bin/env ruby

ARGF.each do |line|
  if ARGF.file.lineno == 1 #if $. == 1
    if line =~ /\r\n$/
      puts ARGF.filename + ":CRLF"
    elsif line =~/\n$/
      puts ARGF.filename + ":LF"
    elsif line =~ /\r$/
      puts ARGF.filename + ":CR"
    else
      puts ARGF.filename + ":Line endings not detected."
    end
  end
end
