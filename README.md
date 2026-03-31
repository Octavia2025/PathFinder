<<<<<<< HEAD
#  <#Title#>

=======
>>>>>>> 0bb144322cae99751eb817bf13c6a59d89146c3e
# PathFinder

PathFinder is a local transport schedule app designed to help commuters in Zimbabwe view ZUPCO and intercity bus schedules, routes, and fares.

## Features
- Route Tracking: Interactive input maps for local and intercity routes.
- Schedules and Fares: Detailed tables showing departure times and costs for various destinations and locations.
- Search Functionality: Integrated search bar for users to check specific locations or destinations.
- Organized Lists: Filterable lists for different routes, operators, and regions.

## Swift Implementation
- Generics: Implemented for efficient sorting and filtering of transport data.
- @EnvironmentObject: Used to manage and share the current user location across the application.
- Lifecycle: Automatically refreshes schedule data to ensure users see the most recent information.
- Debugging: Robust handling for missing or incorrect schedule displays.

## Installation and Setup
To run this project locally, you must configure your GitHub Personal Access Token (API Key).

1. Clone the repository:
   ```bash
   git clone https://github.com
# PathFinder 🇿🇼

**PathFinder** is a streamlined transit companion designed to take the guesswork out of commuting in Zimbabwe. From local **ZUPCO** shuttles to intercity coaches, PathFinder provides real-time access to routes, pricing, and timing.

## 🚀 Key Features

*   **Real-Time Filtering:** Built with **Swift Generics** for lightning-fast performance across operators.
*   **Smart Location Services:** Automatically identifies the nearest pick-up points using CoreLocation.
*   **Fare Transparency:** Up-to-date pricing in **USD** to prevent overcharging.
*   **Digital Directory:** Moving from word-of-mouth schedules to a verified digital list.

## 📋 Functional Requirements


| Feature | Requirement | Acceptance Criteria |
| :--- | :--- | :--- |
| **Route List** | Display all available transport routes. | Users can scroll through 10+ local routes. |
| **Search & Filter** | Real-time suburb/operator search. | Results update instantly as the user types. |
| **Fares & Times** | Departure intervals & costs. | Prices in USD; "Next Departure" clearly visible. |

## 👤 User Stories

- **Daily Commuter:** Plan morning departures from home to CBD.
- **Intercity Traveler:** Filter by operators like *Extra City* for long-distance trips.
- **Student:** Check exact fares before reaching the rank to have change ready.
- **Newcomer:** Use GPS to auto-detect current suburb/region.

## 🛠 Technical Details

- **Language:** Swift 5.0+
- **Frameworks:** SwiftUI, CoreLocation
- **Architecture:** MVVM (recommended)

