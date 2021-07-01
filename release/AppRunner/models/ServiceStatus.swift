// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ServiceStatus {
    case createFailed
    case deleted
    case deleteFailed
    case operationInProgress
    case paused
    case running
    case sdkUnknown(String)
}

extension ServiceStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ServiceStatus] {
        return [
            .createFailed,
            .deleted,
            .deleteFailed,
            .operationInProgress,
            .paused,
            .running,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .createFailed: return "CREATE_FAILED"
        case .deleted: return "DELETED"
        case .deleteFailed: return "DELETE_FAILED"
        case .operationInProgress: return "OPERATION_IN_PROGRESS"
        case .paused: return "PAUSED"
        case .running: return "RUNNING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ServiceStatus(rawValue: rawValue) ?? ServiceStatus.sdkUnknown(rawValue)
    }
}