// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ApiCachingBehavior {
    case fullRequestCaching
    case perResolverCaching
    case sdkUnknown(String)
}

extension ApiCachingBehavior : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ApiCachingBehavior] {
        return [
            .fullRequestCaching,
            .perResolverCaching,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .fullRequestCaching: return "FULL_REQUEST_CACHING"
        case .perResolverCaching: return "PER_RESOLVER_CACHING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ApiCachingBehavior(rawValue: rawValue) ?? ApiCachingBehavior.sdkUnknown(rawValue)
    }
}