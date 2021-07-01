// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum TaskType {
    case evaluation
    case exportLabels
    case findMatches
    case importLabels
    case labelingSetGeneration
    case sdkUnknown(String)
}

extension TaskType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [TaskType] {
        return [
            .evaluation,
            .exportLabels,
            .findMatches,
            .importLabels,
            .labelingSetGeneration,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .evaluation: return "EVALUATION"
        case .exportLabels: return "EXPORT_LABELS"
        case .findMatches: return "FIND_MATCHES"
        case .importLabels: return "IMPORT_LABELS"
        case .labelingSetGeneration: return "LABELING_SET_GENERATION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = TaskType(rawValue: rawValue) ?? TaskType.sdkUnknown(rawValue)
    }
}