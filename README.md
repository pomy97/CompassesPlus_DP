# Compasses+
### This datapack is currently in development! You may encounter bugs. Please report any bugs on my [issue tracker](https://github.com/pomy97/CompassesPlus_DP/issues).  
This datapack adds a new compass to the game (with more to come), completely in vanilla!  
**Dear Server Owners:**  
Please check the section at the bottom of this page for info on how to get this datapack to work properly.  
# Compasses Added
## Bounty Compass
This is a compass that tracks mobs and players! This could also be used for more dynamic Minecraft Manhunts.  
### Obtaining
You can obtain a Bounty Compass by crafting it in a crafting table.  
![Crafting Recipe](https://github.com/user-attachments/assets/19052d7d-9e03-42c2-920a-19bb3b8d368f)  
Alternatively, you can get yourself a Bounty Compass by running this command:  
`/loot give @s loot hunters:item/bounty_compass`
### Usage
Once you have your new compass, you can punch a mob or player to bind it to them. The compass will point to the entity when held in your main hand. (Note: when not held in your main hand, the needle will spin around aimlessly)  
![bind mob gif](https://github.com/user-attachments/assets/0bc22470-caf5-47d8-9dee-1ee52ab91fff)
![bind player gif](https://github.com/user-attachments/assets/8689e80a-18b5-4ce5-b500-2454a3bf4918)

If a target dies (or gets killed) any compasses bound to that target before then will deactivate. So if you bind a compass to a player and the player, day, pulls a Luxintrus and dies of fall damage, the compass will deactivate (even if the player respawns).  
![target_dies](https://github.com/user-attachments/assets/ec0a9475-89c0-42ea-9fa2-e9c7f7b61bdc)

When it comes to tracking players, you can only track players that are ONLINE. If the player has left the game, you're outta luck.  
![can't track offline players](https://github.com/user-attachments/assets/a3e2cbba-ae08-4380-b329-973eaa614b35)

### Cloning
You can clone existing compasses by throwing a bound compass (bounty or not) and an unbound compass onto a crafting table. This will copy all the data from the bound compass onto the unbound one.  
![Cloning Diagram](https://github.com/user-attachments/assets/697b0c86-b13c-4fbe-9fb1-4ccbbf9b0bb1)  
![cloning gif](https://github.com/user-attachments/assets/d5153e57-68c0-4ecd-91b1-609652092536)

### Bounties
You can add a bounty/reward to a bound compass by throwing the compass onto a crafting table along with a bundle filled with the reward. Bountied compasses can also be cloned.  
![applying a bounty to a compass gif](https://github.com/user-attachments/assets/fb121aee-20a1-4d0c-a82c-31d59e6f230d)

There is also compatability with MiniHUD! If you have `shulkerBoxPreview` enabled, you to see all contents of a bountied compass.  
![MiniHUD Compatability demo](https://github.com/user-attachments/assets/6bf6d0b4-d69f-4138-90fb-ab4fbfa7087c)

Killing the target of the bounty compass will allow you to claim the bounty when holding the compass. If multiple people have matching bounty compasses, only one will be able to claim the reward.  Note that to claim the reward, you must:
- Have the bountied compass in your inventory.
- Must recieve kill credit for the kill.  
![claiming bounty gif](https://github.com/user-attachments/assets/9e0fa841-9252-4eaa-8b07-8332a9e8ca72)

# Optional Resource Pack
There is an optional resource pack as well! It gives the bounty compass different textures depending on it's state.  
![respack demo](https://github.com/user-attachments/assets/48ef48ef-36fd-465e-a62c-c03e50f151dc)
**[[Github Repo](https://github.com/pomy97/CompassesPlus_RP)]**  

# Known Issues
**Bounty Compasses can cause ghost items**  
This is due to the method the compass gets the location data of its target. I don't know a fix personally, but a way to avoid the ghost items is to not have the compass in your main hand when dropping it or moving it around inventories.

# Notes to Server Owners
Make sure to have gamerule `doMobLoot` set to `true`. This is critical for detecting when a player kills a bountied mob.  
For Bukkit servers, make sure `allow-non-player-entities-on-scoreboards` is set to `true`.

# Credits
Any libraries, code, etc used in this project
- **Simple-UUID** by **Skubiak0903**
  - [Project Github](https://github.com/Skubiak0903/Simple-UUID)
  - [Skubiak0903's Github](https://github.com/Skubiak0903)
- **Item Name to NBT** by **@DorkOrc**
  - [The discord message containing the code](https://discord.com/channels/154777837382008833/1275839527864500265/1276056392196816970)
# Inspiration
- **Dream's Minecraft Manhunts**
  - [Dream's Youtube](https://www.youtube.com/@dream/videos)