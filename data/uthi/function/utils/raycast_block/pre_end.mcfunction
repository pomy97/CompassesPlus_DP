# from ../step
$tellraw @a[tag=uthi.dev] ["Ray: Ended before full $(ray_steps) steps (Step: ",{"score": {"objective":"uthi.raycastSteps","name": "#ray"}},")"]
$scoreboard players set #ray uthi.raycastSteps $(ray_steps)