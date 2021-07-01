// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ExecutionStatus {
    case completed
    case pending
    case pendingConcurrnecy
    case pendingDevice
    case preparing
    case processing
    case running
    case scheduling
    case stopping
    case sdkUnknown(String)
}

extension ExecutionStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ExecutionStatus] {
        return [
            .completed,
            .pending,
            .pendingConcurrnecy,
            .pendingDevice,
            .preparing,
            .processing,
            .running,
            .scheduling,
            .stopping,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .completed: return "COMPLETED"
        case .pending: return "PENDING"
        case .pendingConcurrnecy: return "PENDING_CONCURRENCY"
        case .pendingDevice: return "PENDING_DEVICE"
        case .preparing: return "PREPARING"
        case .processing: return "PROCESSING"
        case .running: return "RUNNING"
        case .scheduling: return "SCHEDULING"
        case .stopping: return "STOPPING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ExecutionStatus(rawValue: rawValue) ?? ExecutionStatus.sdkUnknown(rawValue)
    }
}