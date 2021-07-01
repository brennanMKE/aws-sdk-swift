// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum OperationType {
    case insert
    case modify
    case remove
    case sdkUnknown(String)
}

extension OperationType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [OperationType] {
        return [
            .insert,
            .modify,
            .remove,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .insert: return "INSERT"
        case .modify: return "MODIFY"
        case .remove: return "REMOVE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = OperationType(rawValue: rawValue) ?? OperationType.sdkUnknown(rawValue)
    }
}