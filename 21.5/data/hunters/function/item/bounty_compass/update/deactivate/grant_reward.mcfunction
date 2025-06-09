$item modify entity @s weapon {\
  function:"set_components",\
  components: {\
    bundle_contents: $(bundle_contents)\
  }\
}
item modify entity @s weapon hunters:bounty_compass/bundle
