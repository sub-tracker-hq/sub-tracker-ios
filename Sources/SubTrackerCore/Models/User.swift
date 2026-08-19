import Foundation

/// Mirrors sub-tracker-api's `users` row shape.
public struct User: Codable, Identifiable, Equatable {
    public let id: String
    public let clerkId: String
    public let email: String
    public let fullName: String?
    public let defaultCurrency: String
    public let createdAt: String
    public let updatedAt: String

    enum CodingKeys: String, CodingKey {
        case id
        case clerkId = "clerk_id"
        case email
        case fullName = "full_name"
        case defaultCurrency = "default_currency"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}
