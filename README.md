# Minigames-Fortnite-Map
Minigames Fortnite map released in 2023 with over 2 million plays, peaking at 6k concurrent players. Features 40 plus different minigames to play and over 5k lines of code. 
Trailer` https://www.youtube.com/watch?v=3ygPxVy6p8o
link to map https://fortnite.gg/island/6066-0594-3952
other maps https://fortnite.gg/creator/theffa 
Here’s a polished README you can copy straight into README.md:

# UEFN Multiplayer Minigame Collection

A large-scale multiplayer Fortnite experience built in **Unreal Editor for Fortnite (UEFN)** using **Verse**.

The project features a collection of **40+ unique minigames** controlled through a custom Verse game-management system. The system handles round selection, player eliminations, respawning, teams, inventories, teleportation, storms, vehicles, UI messages, persistent statistics, and game-specific win conditions.


## Features

- 40+ unique multiplayer minigames
- Automatic round and game-mode management
- Custom elimination and respawn systems
- Free-for-all and team-based modes
- Dynamic player teleportation
- Custom spawn management
- Weapon and inventory granting systems
- Vehicle-based minigames
- Dynamic storm controllers
- Player checkpoint systems
- Custom HUD messages and game-state feedback
- Team scoring and win-condition logic
- Persistent player statistics
- Randomized game selection
- Cinematic sequence integration
- Player state tracking throughout rounds

## Technologies

- **Unreal Editor for Fortnite (UEFN)**
- **Verse**
- **Unreal Engine**
- **Fortnite Creative Devices**

## Verse Systems

The project uses a centralized Verse system to manage the different game modes and their associated devices.

Some of the systems implemented include:

### Round Management

The game controller determines which minigame is active, initializes the required devices, prepares players, and resets the previous game state before starting the next round.

### Player Management

The Verse code tracks player state throughout each game, including:

- Alive/dead state
- Team membership
- Eliminations
- Respawning
- Player-specific game state
- Inventory progression
- Win conditions

### Dynamic Game Modes

Each game mode can enable its own combination of:

- Storm controllers
- Teleporters
- Item granters
- Vehicles
- Mutator zones
- Capture areas
- Checkpoints
- Cinematic sequences
- Explosive devices
- Movement modifiers
- HUD elements

This allows a single game controller to manage many completely different multiplayer experiences.

### Persistent Statistics

The project also includes a persistent player-stat system for tracking values such as:

- Eliminations
- Wins
- Games won

## Project Structure

```text
UEFN-Minigame-Collection/
│
├── README.md
│
├── Verse/
│   └── Games.verse
│
└── Images/
    ├── gameplay-thumbnail.png
    ├── gameplay-01.png
    ├── gameplay-02.png
    └── gameplay-03.png
Source Code

The main Verse game controller can be found here:

Verse/Games.verse

The source demonstrates the gameplay systems and logic used to coordinate the project's minigames.

Highlights

One of the biggest challenges of the project was creating a system capable of managing dozens of game modes without requiring each mode to function as a completely independent project.

The central Verse controller handles transitions between game modes while resetting and configuring the devices required for each round.

This includes managing:

Different spawn locations
Different player teams
Different weapons
Different storm configurations
Different win conditions
Different vehicles
Different arenas
Different player states

The result is a single Fortnite experience capable of rapidly switching between many different styles of gameplay.

What I Worked On
Verse gameplay programming
Game-mode logic
Multiplayer systems
Round management
Player state management
Team systems
Elimination and respawn logic
Device integration
UI/game-state feedback
UEFN level and gameplay implementation
