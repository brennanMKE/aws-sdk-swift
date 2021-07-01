// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause a queue continue to run until they finish or result in an error.
public enum QueueStatus {
    case active
    case paused
    case sdkUnknown(String)
}

extension QueueStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [QueueStatus] {
        return [
            .active,
            .paused,
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
        case .paused: return "PAUSED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = QueueStatus(rawValue: rawValue) ?? QueueStatus.sdkUnknown(rawValue)
    }
}