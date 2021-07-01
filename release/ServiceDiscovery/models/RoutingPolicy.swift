// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum RoutingPolicy {
    case multivalue
    case weighted
    case sdkUnknown(String)
}

extension RoutingPolicy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [RoutingPolicy] {
        return [
            .multivalue,
            .weighted,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .multivalue: return "MULTIVALUE"
        case .weighted: return "WEIGHTED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = RoutingPolicy(rawValue: rawValue) ?? RoutingPolicy.sdkUnknown(rawValue)
    }
}