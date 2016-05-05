a = { "xim" => 12, "amd" => 13, "yos" => 15}
b = a 
b["xim"] = 10
puts b
puts a

a = { "xim" => 12, "amd" => 13, "yos" => 15}
c = a.dup
puts c
c["xim"] = 10
puts c
puts a

a = { "xim" => 12, "amd" => 13, "yos" => 15}
d = a.clone
puts d
d["xim"] = 18
puts d
puts a