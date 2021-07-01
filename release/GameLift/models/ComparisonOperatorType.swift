// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ComparisonOperatorType {
    case greaterthanorequaltothreshold
    case greaterthanthreshold
    case lessthanorequaltothreshold
    case lessthanthreshold
    case sdkUnknown(String)
}

extension ComparisonOperatorType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ComparisonOperatorType] {
        return [
            .greaterthanorequaltothreshold,
            .greaterthanthreshold,
            .lessthanorequaltothreshold,
            .lessthanthreshold,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .greaterthanorequaltothreshold: return "GreaterThanOrEqualToThreshold"
        case .greaterthanthreshold: return "GreaterThanThreshold"
        case .lessthanorequaltothreshold: return "LessThanOrEqualToThreshold"
        case .lessthanthreshold: return "LessThanThreshold"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ComparisonOperatorType(rawValue: rawValue) ?? ComparisonOperatorType.sdkUnknown(rawValue)
    }
}