// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AdminStatus {
    case disableInProgress
    case enabled
    case sdkUnknown(String)
}

extension AdminStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AdminStatus] {
        return [
            .disableInProgress,
            .enabled,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .disableInProgress: return "DISABLE_IN_PROGRESS"
        case .enabled: return "ENABLED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AdminStatus(rawValue: rawValue) ?? AdminStatus.sdkUnknown(rawValue)
    }
}