// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DimensionType {
    case topicFilter
    case sdkUnknown(String)
}

extension DimensionType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DimensionType] {
        return [
            .topicFilter,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .topicFilter: return "TOPIC_FILTER"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DimensionType(rawValue: rawValue) ?? DimensionType.sdkUnknown(rawValue)
    }
}