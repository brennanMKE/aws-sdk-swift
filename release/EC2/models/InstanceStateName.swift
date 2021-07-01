// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum InstanceStateName {
    case pending
    case running
    case shuttingDown
    case stopped
    case stopping
    case terminated
    case sdkUnknown(String)
}

extension InstanceStateName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [InstanceStateName] {
        return [
            .pending,
            .running,
            .shuttingDown,
            .stopped,
            .stopping,
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
        case .pending: return "pending"
        case .running: return "running"
        case .shuttingDown: return "shutting-down"
        case .stopped: return "stopped"
        case .stopping: return "stopping"
        case .terminated: return "terminated"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = InstanceStateName(rawValue: rawValue) ?? InstanceStateName.sdkUnknown(rawValue)
    }
}