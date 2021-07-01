// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum LaunchStatus {
    case failed
    case inProgress
    case launched
    case pending
    case terminated
    case sdkUnknown(String)
}

extension LaunchStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [LaunchStatus] {
        return [
            .failed,
            .inProgress,
            .launched,
            .pending,
            .terminated,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .failed: return "FAILED"
        case .inProgress: return "IN_PROGRESS"
        case .launched: return "LAUNCHED"
        case .pending: return "PENDING"
        case .terminated: return "TERMINATED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = LaunchStatus(rawValue: rawValue) ?? LaunchStatus.sdkUnknown(rawValue)
    }
}