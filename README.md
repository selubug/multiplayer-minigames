# Multiplayer Minigames — Unreal Engine / UEFN

A large-scale multiplayer game built with **Unreal Editor for Fortnite (UEFN)** and **Verse**, featuring more than **40 unique minigames** controlled through a centralized gameplay system.

The project was released in 2023 and has reached:

* **2M+ player sessions**
* **6,000+ peak concurrent players**
* **40+ multiplayer game modes**
* **5,000+ lines of gameplay code**

🎥 [Gameplay Trailer](https://www.youtube.com/watch?v=3ygPxVy6p8o)
🎮 [View Published Game](https://fortnite.gg/island/6066-0594-3952)
🕹️ [More Published Projects](https://fortnite.gg/creator/theffa)

---

## Engineering Overview

The main challenge was building a single multiplayer architecture capable of supporting dozens of completely different game modes without requiring every mode to function as an independent project.

I developed a centralized **Verse game controller** responsible for configuring, starting, managing, and resetting each minigame.

The system coordinates player state, teams, inventories, spawn locations, scoring, win conditions, vehicles, storms, UI, cinematics, and other Unreal/UEFN gameplay devices in real time.

This allowed one published experience to transition dynamically between more than 40 different multiplayer modes.

---

## Core Systems

### Game & Round Management

The central game controller manages the complete lifecycle of each minigame:

* Randomized game selection
* Round initialization
* Game-state transitions
* Player setup and cleanup
* Win-condition evaluation
* Round resets
* Mode-specific device configuration

Each minigame can define its own arena, rules, inventory, teams, movement behavior, storms, vehicles, and victory conditions.

### Player State Management

Player state is tracked throughout the multiplayer session, including:

* Alive / eliminated state
* Team membership
* Respawning
* Eliminations
* Inventory progression
* Current game state
* Win conditions
* Player-specific statistics

### Persistent Data

The project includes a persistent statistics system that stores player progress between sessions.

Tracked data includes:

* Eliminations
* Wins
* Individual minigame victories

Persistence is implemented through Verse persistable classes and player data maps.

### Dynamic Gameplay Systems

The controller integrates a large number of Unreal/UEFN gameplay systems, including:

* Storm controllers
* Teleporters
* Item granters
* Player spawners
* Vehicles
* Mutator zones
* Timers
* Capture areas
* Checkpoints
* Cinematic sequences
* HUD messages
* Audio systems
* Damage volumes
* Movement modifiers
* Team and class selectors

These systems are enabled, configured, and reset dynamically depending on the selected game mode.

---

## Technical Concepts

This project demonstrates experience with:

* Event-driven programming
* Multiplayer game architecture
* Persistent data
* Player state management
* Finite-state game flow
* Arrays and maps
* Asynchronous gameplay logic
* Gameplay event subscriptions
* Randomized systems
* Reusable software systems
* Real-time multiplayer logic
* UI and gameplay integration
* Debugging live multiplayer systems

---

## Technologies

**Project Technologies**

* Unreal Engine / UEFN
* Verse
* Unreal gameplay devices
* Fortnite UI APIs
* Persistent player data

**Broader Unreal Development Experience**

My Unreal Engine work extends beyond this repository and includes **C++, Verse, and Blueprints** across more than 15 shipped multiplayer products.

The Verse source in this repository represents the gameplay layer for this specific UEFN project.

---

## Scale

This project was built as a production multiplayer experience rather than a standalone programming exercise.

**Production results:**

| Metric                  |          Result |
| ----------------------- | --------------: |
| Player Sessions         |             2M+ |
| Peak Concurrent Players |          6,000+ |
| Minigames               |             40+ |
| Gameplay Code           |    5,000+ lines |
| Platform                | Fortnite / UEFN |

Building for thousands of concurrent users required designing systems that could reliably reset state, handle player joins and eliminations, transition between modes, and coordinate many gameplay devices without breaking the multiplayer session.

---

## My Contributions

I was responsible for work across both gameplay programming and implementation, including:

* Gameplay architecture
* Verse programming
* Multiplayer game logic
* Round management
* Persistent player statistics
* Player state management
* Team systems
* Inventory systems
* Elimination and respawn logic
* Win-condition systems
* Device integration
* HUD and player feedback
* Gameplay debugging
* UEFN implementation
* Live iteration and updates

---

## Source Code

The repository contains the primary Verse gameplay implementation used to coordinate the multiplayer experience.

[`Mini.verse`](./Mini.verse)

The full published experience also relies on level configuration, Unreal/UEFN assets, Creative devices, UI assets, and other editor-side systems that are not represented by source code alone.

