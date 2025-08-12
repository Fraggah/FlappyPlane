# FlappyPlane

**Genre:** Arcade – Endless Runner  
**Engine:** Godot Engine (GDScript)  
**Platform:** PC / HTML5  

FlappyPlane is a custom Flappy Bird clone developed as an exercise in gameplay scripting, performance optimization, and collision handling in Godot.

---

## 🎮 Technical Features

- **Optimized gameplay loop** for stable FPS across devices.
- **Procedural obstacle generation** (pipes) with randomized spacing and heights.
- **Real-time scoring system** with dynamic UI updates.
- **Game state management**: `Ready → Playing → Game Over`.
- **Accurate collision detection** using `Area2D` and `CollisionShape2D`.
- **Multi-layer parallax background** for depth perception.
- **Decoupled input system** for easy control mapping (keyboard / touch).

---

## 🛠 Technical Challenges & Solutions

- **Issue:** Inconsistent scroll speed across devices with different refresh rates.  
  **Solution:** Normalized movement using `delta` inside the `_process()` loop.

- **Issue:** False positive collisions when the player was near sprite edges.  
  **Solution:** Adjusted `CollisionShape2D` and scaled sprites to match hitbox boundaries precisely.

---

## 📂 Project Structure

