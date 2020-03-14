scales = [0.9, 0.8, 0.7, 0.6, 0.5]

scales.each do |scale|
  puts "scaleが#{scale}のとき: widh=#{(1 / scale) * 100}% を指定する"
end
