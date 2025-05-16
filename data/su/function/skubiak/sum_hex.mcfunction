#convert hex char to int
$data modify storage su:temp hex.int set from storage su:main int_chars.$(char)

#multiply int by power of 16 and add to sum
function su:skubiak/add_int with storage su:temp hex