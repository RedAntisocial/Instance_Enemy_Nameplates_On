# Instance_Enemy_Nameplates_On

![WoW Version](https://img.shields.io/badge/WoW-Retail_\(The_War_Within\)-orange)
![Language](https://img.shields.io/badge/Lua-5.1%2B-lightgrey)
![Status](https://img.shields.io/badge/Status-Stable-green)

---

**Instance_Enemy_Nameplates_On** is a minimal World of Warcraft addon that automatically toggles **enemy nameplates** depending on your location.
When you enter any instance (dungeon, raid, battleground, or arena), all nameplates turn **on**.
When you leave, they turn **off** for a clean overworld experience.
Originally a minimal [WeakAura by the same name](https://wago.io/Bxd7HvOnX), but those are going away in Midnight... So, here we are...

---

## Features

* **Automatic instance detection**

  * Enables nameplates when inside instances.
  * Disables them in the open world.
* **Zero configuration required** — works instantly.
* **No overhead** — single frame, four events, boneheadedly easy.
* **Silent** — no slash commands or UI clutter.

---

## Technical Details

* **File:** `Instance_Enemy_Nameplates_On.lua`
* **Language:** Lua (WoW API)
* **Events used:**

  * `PLAYER_ENTERING_WORLD`
  * `ZONE_CHANGED_NEW_AREA`
  * `ZONE_CHANGED_INDOORS`
  * `ZONE_CHANGED`
* **Core logic:**

  ```lua
  if IsInInstance() then
      SetCVar("nameplateShowAll", 1)
  else
      SetCVar("nameplateShowAll", 0)
  end
  ```

---

## Installation

1. Download or clone this repository.

2. Place the folder in your AddOns directory:

   ```
   World of Warcraft/_retail_/Interface/AddOns/Instance_Enemy_Nameplates_On/
   ```

3. Include this `.toc` file inside that folder:

   ```toc
   ## Interface: 110002
   ## Title: Instance_Enemy_Nameplates_On
   ## Notes: Automatically enables enemy nameplates when inside instances.
   ## Author: Alex Pierce
   ## Version: 1.0
   Instance_Enemy_Nameplates_On.lua
   ```

4. Restart WoW or use `/reload`.

---

## Contributing

* Pull requests welcome.
* Keep it lightweight and dependency-free.

---

## License

Licensed under the **GNU General Public License v3.0 (GPL v3)**.
See [https://www.gnu.org/licenses/gpl-3.0.html](https://www.gnu.org/licenses/gpl-3.0.html) for details.
