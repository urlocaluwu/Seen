//
//  Structs.swift
//  Seen
//
//  Created by cutiepie on 10/9/24.
//
import SwiftUI

struct Story: Identifiable, Codable {
    var id: Int
    var name: String
    var description: String
    var author: String
    var characters: [TCharacter]
    var chapters: [Chapter]
}

struct TCharacter: Identifiable, Codable {
    let id: Int
    var profilePicture: String?
    var name: String
}

struct Chapter: Identifiable, Codable {
    let id: Int
    var title: String
    var pointThresholds: [PointThreshold]
    var messages: [Message]
}

struct PointThreshold: Identifiable, Codable {
    var id: Int
    var points: Int
    var jumpToChapterId: Int
}

struct Message: Identifiable, Codable {
    var id: Int
    var conditionalMessages: [ConditionalMessage]
}

struct ConditionalMessage: Identifiable, Codable {
    var id: Int
    var pointThreshold: Int
    var type: MessageType
    var content: String
    var characterId: Int
    var choices: [Choice]?
    
    enum MessageType: String, Codable, CaseIterable {
        case text
        case image
        case audio
    }
}

struct Choice: Identifiable, Codable {
    var id: Int
    var content: String
    var nextMessageId: Int?
    var pointsAwarded: Int
}
