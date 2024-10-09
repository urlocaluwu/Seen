import Foundation

// Function to save stories to JSON file
func saveStories(_ stories: [Story], to url: URL) {
    do {
        let encoder = JSONEncoder()
        let data = try encoder.encode(stories)
        try data.write(to: url)
    } catch {
        print("Error saving stories: \(error)")
    }
}

// Function to load stories from JSON file
func loadStories(from url: URL) -> [Story] {
    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        return try decoder.decode([Story].self, from: data)
    } catch {
        print("Error loading stories: \(error)")
        return []
    }
}
