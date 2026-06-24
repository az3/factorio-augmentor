Augmentor
========
This mod adds an augmentor to the game that takes any item, processes it, and returns it with a small chance of upgrading its quality.

NOTE
========
I do not work on this mod anymore. If you found this, consider trying   [Quality Condenser](https://mods.factorio.com/mod/quality-condenser) , which seems to be a lot better.

If anyone wants to take over, feel free to. I am no longer playing games due to life getting so busy.

Overview
----------
The idea of this mod is to simplify the upcycle process. The recycling loop can be a bit daunting and not space-efficient, especially if you use another mod that adds more quality tiers. The usual process involves crafting, recycling, and then crafting again, for 1-2 quality jumps. The Augmentor makes it easy by taking an item and returning it (90% of the time), with a 10% quality base, and can take more quality modules to boost it further.  No more dealing with excessive recycling, or having different quality recycled ingredients due to the quality skip.

The Augmentor is the entire loop in one, just keep feeding it an item until it gets to max quality. Note that after a craft, you still have to take the product out and feed it again.

Mod settings
-------------------------
- Base crafting speed: in seconds for each augment regardless of items, this increases with machine quality
- Base quality: native quality chance, can be enhanced further by inserting more quality modules, this does not increase with machine quality
- Result chance: every augment has a chance of preserving an item, 90% by default. This rolls independently of the quality upgrade. For example, with 34.8% quality and 100 items, it keeps 90 of them, and 31 of 90 are upgraded. Keep feeding the same items again and some will be upgraded, but some will also be voided.

Technical details and UPS
-------------------------
This machine is basically a recycler. I copied everything from it. Recipes are automatically generated where ingredient = result, 1 ingredient to 1 result * chance of preserving it (90% by default). Therefore, it's very UPS friendly since I do not have any extra function call on a given tick. It's simply another machine with its own recipes. Everything is added during game load, nothing extra is run during the normal gameplay, no runtime scripts.

This is unlocked with the recycler, must be crafted on Fulgora, and usable anywhere.

Compatibility
-------------------------
This may not be compatible with mods that change all recipes at once. For example, some productivity mods loop through all recipes and exclude "barrel" and "recycling" recipe groups only, while they should also be excluding "augmented" recipes.

Nothing I can do about that, I cannot also add these recipes as "recycling" because then the recycler won't work.

Credits
-------------------------
The sprites are provided by [Hurricane046](https://mods.factorio.com/user/Hurricane046), thank you for such an amazing, highly detailed machine.

---

FAQ
===

UPS Friendly?
----------------

Definitely, it's a copy of a recycler, with its own "recycling" recipes.  Think of a scrap to 20% iron gears, this is <any item> to 90% <any item>. Quality calculation is done by Factorio

Runtime script?
----------------
Nope, nothing is added to control.lua.

Modded quality tiers
----------------------
While I haven't tested, it should work. I didn't change or add anything regarding quality, it's all handled by the engine.

Note: More qualities -> more cycles -> higher chance of being voided

My quality % is not right
-----------------------
There may be another mod that changes quality %, specifically if anything changes the .next_probability of QualityPrototype. This affects all machines, vanilla and modded.

---

Summary
=======

A machine that has a chance to upgrade the quality of any item