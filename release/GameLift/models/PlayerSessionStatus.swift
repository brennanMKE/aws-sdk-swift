// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum PlayerSessionStatus {
    case active
    case completed
    case reserved
    case timedout
    case sdkUnknown(String)
}

extension PlayerSessionStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [PlayerSessionStatus] {
        return [
            .active,
            .completed,
            .reserved,
            .timedout,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .active: return "ACTIVE"
        case .completed: return "COMPLETED"
        case .reserved: return "RESERVED"
        case .timedout: return "TIMEDOUT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = PlayerSessionStatus(rawValue: rawValue) ?? PlayerSessionStatus.sdkUnknown(rawValue)
    }
}