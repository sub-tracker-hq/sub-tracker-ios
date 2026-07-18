import Foundation

public struct APIError: Error {
    public let statusCode: Int
    public let body: String
}

/// Minimal URLSession wrapper. Auth token injection and endpoint-specific
/// calls will build on top of this as the app grows.
public final class APIClient {
    private let baseURL: URL
    private let session: URLSession

    public init(baseURL: URL, session: URLSession = .shared) {
        self.baseURL = baseURL
        self.session = session
    }

    public func get<T: Decodable>(_ path: String) async throws -> T {
        let (data, response) = try await session.data(from: baseURL.appendingPathComponent(path))

        guard let http = response as? HTTPURLResponse else {
            throw APIError(statusCode: -1, body: "no HTTP response")
        }
        guard (200..<300).contains(http.statusCode) else {
            throw APIError(statusCode: http.statusCode, body: String(data: data, encoding: .utf8) ?? "")
        }

        return try JSONDecoder().decode(T.self, from: data)
    }
}
