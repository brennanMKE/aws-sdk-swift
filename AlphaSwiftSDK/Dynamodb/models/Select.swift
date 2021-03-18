// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum Select {
    case allAttributes
    case allProjectedAttributes
    case count
    case specificAttributes
    case sdkUnknown(String)
}

extension Select : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Select] {
        return [
            .allAttributes,
            .allProjectedAttributes,
            .count,
            .specificAttributes,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .allAttributes: return "ALL_ATTRIBUTES"
        case .allProjectedAttributes: return "ALL_PROJECTED_ATTRIBUTES"
        case .count: return "COUNT"
        case .specificAttributes: return "SPECIFIC_ATTRIBUTES"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Select(rawValue: rawValue) ?? Select.sdkUnknown(rawValue)
    }
}
