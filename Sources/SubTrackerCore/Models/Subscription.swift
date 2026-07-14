import Foundation

/// Mirrors sub-tracker-api's subscription response shape.
/// Amount is kept as a String (never Double) — the API sends it as a
/// decimal string precisely so clients never round-trip it through a float.
public struct Subscription: Codable, Identifiable, Equatable {
    public let id: String
    public let providerKey: String?
    public let name: String
    public let category: String
    public let amount: String
    public let currency: String
    public let billingCycle: String
    public let nextBillingDate: String?
    public let status: String
    public let source: String
    public let createdAt: String
    public let updatedAt: String

    enum CodingKeys: String, CodingKey {
        case id
        case providerKey = "provider_key"
        case name
        case category
        case amount
        case currency
        case billingCycle = "billing_cycle"
        case nextBillingDate = "next_billing_date"
        case status
        case source
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}
