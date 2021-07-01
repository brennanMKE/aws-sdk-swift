// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ModelStatus {
    case deleting
    case hosted
    case hostingFailed
    case startingHosting
    case stoppingHosting
    case systemUpdating
    case trained
    case training
    case trainingFailed
    case sdkUnknown(String)
}

extension ModelStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ModelStatus] {
        return [
            .deleting,
            .hosted,
            .hostingFailed,
            .startingHosting,
            .stoppingHosting,
            .systemUpdating,
            .trained,
            .training,
            .trainingFailed,
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
        case .hosted: return "HOSTED"
        case .hostingFailed: return "HOSTING_FAILED"
        case .startingHosting: return "STARTING_HOSTING"
        case .stoppingHosting: return "STOPPING_HOSTING"
        case .systemUpdating: return "SYSTEM_UPDATING"
        case .trained: return "TRAINED"
        case .training: return "TRAINING"
        case .trainingFailed: return "TRAINING_FAILED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ModelStatus(rawValue: rawValue) ?? ModelStatus.sdkUnknown(rawValue)
    }
}