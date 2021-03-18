// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ExportStatus {
    case completed
    case failed
    case inProgress
    case sdkUnknown(String)
}

extension ExportStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ExportStatus] {
        return [
            .completed,
            .failed,
            .inProgress,
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
        case .failed: return "FAILED"
        case .inProgress: return "IN_PROGRESS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ExportStatus(rawValue: rawValue) ?? ExportStatus.sdkUnknown(rawValue)
    }
}
