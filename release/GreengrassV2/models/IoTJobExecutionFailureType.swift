// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum IoTJobExecutionFailureType {
    case all
    case failed
    case rejected
    case timedOut
    case sdkUnknown(String)
}

extension IoTJobExecutionFailureType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [IoTJobExecutionFailureType] {
        return [
            .all,
            .failed,
            .rejected,
            .timedOut,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .all: return "ALL"
        case .failed: return "FAILED"
        case .rejected: return "REJECTED"
        case .timedOut: return "TIMED_OUT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = IoTJobExecutionFailureType(rawValue: rawValue) ?? IoTJobExecutionFailureType.sdkUnknown(rawValue)
    }
}