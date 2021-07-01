// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum InterconnectState {
    case available
    case deleted
    case deleting
    case down
    case pending
    case requested
    case unknown
    case sdkUnknown(String)
}

extension InterconnectState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [InterconnectState] {
        return [
            .available,
            .deleted,
            .deleting,
            .down,
            .pending,
            .requested,
            .unknown,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .available: return "available"
        case .deleted: return "deleted"
        case .deleting: return "deleting"
        case .down: return "down"
        case .pending: return "pending"
        case .requested: return "requested"
        case .unknown: return "unknown"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = InterconnectState(rawValue: rawValue) ?? InterconnectState.sdkUnknown(rawValue)
    }
}