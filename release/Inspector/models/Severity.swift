// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum Severity {
    case high
    case informational
    case low
    case medium
    case undefined
    case sdkUnknown(String)
}

extension Severity : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Severity] {
        return [
            .high,
            .informational,
            .low,
            .medium,
            .undefined,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .high: return "High"
        case .informational: return "Informational"
        case .low: return "Low"
        case .medium: return "Medium"
        case .undefined: return "Undefined"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Severity(rawValue: rawValue) ?? Severity.sdkUnknown(rawValue)
    }
}