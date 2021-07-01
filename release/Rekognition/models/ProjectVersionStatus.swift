// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ProjectVersionStatus {
    case deleting
    case failed
    case running
    case starting
    case stopped
    case stopping
    case trainingCompleted
    case trainingFailed
    case trainingInProgress
    case sdkUnknown(String)
}

extension ProjectVersionStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ProjectVersionStatus] {
        return [
            .deleting,
            .failed,
            .running,
            .starting,
            .stopped,
            .stopping,
            .trainingCompleted,
            .trainingFailed,
            .trainingInProgress,
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
        case .failed: return "FAILED"
        case .running: return "RUNNING"
        case .starting: return "STARTING"
        case .stopped: return "STOPPED"
        case .stopping: return "STOPPING"
        case .trainingCompleted: return "TRAINING_COMPLETED"
        case .trainingFailed: return "TRAINING_FAILED"
        case .trainingInProgress: return "TRAINING_IN_PROGRESS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ProjectVersionStatus(rawValue: rawValue) ?? ProjectVersionStatus.sdkUnknown(rawValue)
    }
}