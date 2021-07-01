// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DetectMitigationActionExecutionStatus {
    case failed
    case inProgress
    case skipped
    case successful
    case sdkUnknown(String)
}

extension DetectMitigationActionExecutionStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DetectMitigationActionExecutionStatus] {
        return [
            .failed,
            .inProgress,
            .skipped,
            .successful,
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
        case .skipped: return "SKIPPED"
        case .successful: return "SUCCESSFUL"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DetectMitigationActionExecutionStatus(rawValue: rawValue) ?? DetectMitigationActionExecutionStatus.sdkUnknown(rawValue)
    }
}