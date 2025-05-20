# from func 
#
# @s = compass item

# tag the bundle
say @n[dx=1,type=item,tag=hu.item.filled_bundle] if items entity @s contents *[bundle_contents~{items:{size:{min:1}}}]
say @s