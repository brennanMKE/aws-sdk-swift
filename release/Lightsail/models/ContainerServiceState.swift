// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ContainerServiceState {
    case deleting
    case deploying
    case disabled
    case pending
    case ready
    case running
    case updating
    case sdkUnknown(String)
}

extension ContainerServiceState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ContainerServiceState] {
        return [
            .deleting,
            .deploying,
            .disabled,
            .pending,
            .ready,
            .running,
            .updating,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .deleting: return "DELETING"
        case .deploying: return "DEPLOYING"
        case .disabled: return "DISABLED"
        case .pending: return "PENDING"
        case .ready: return "READY"
        case .running: return "RUNNING"
        case .updating: return "UPDATING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ContainerServiceState(rawValue: rawValue) ?? ContainerServiceState.sdkUnknown(rawValue)
    }
}