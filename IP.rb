def check_address(address)
  parts = address.split('.')
  if parts.length != 4
    return false
  end

  parts.each do |part|
    if part.to_i < 0 || part.to_i > 255
      return false
    end

    if part.to_i.to_s != part
      return false
    end
  end
  
  return true
end

puts "Введіть адресу IPv4:"
input = gets.chomp

if check_address(input)
  puts "true"
else
  puts "false"
end

