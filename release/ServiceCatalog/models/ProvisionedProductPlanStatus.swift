// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ProvisionedProductPlanStatus {
    case createFailed
    case createInProgress
    case createSuccess
    case executeFailed
    case executeInProgress
    case executeSuccess
    case sdkUnknown(String)
}

extension ProvisionedProductPlanStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ProvisionedProductPlanStatus] {
        return [
            .createFailed,
            .createInProgress,
            .createSuccess,
            .executeFailed,
            .executeInProgress,
            .executeSuccess,
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
        case .createInProgress: return "CREATE_IN_PROGRESS"
        case .createSuccess: return "CREATE_SUCCESS"
        case .executeFailed: return "EXECUTE_FAILED"
        case .executeInProgress: return "EXECUTE_IN_PROGRESS"
        case .executeSuccess: return "EXECUTE_SUCCESS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ProvisionedProductPlanStatus(rawValue: rawValue) ?? ProvisionedProductPlanStatus.sdkUnknown(rawValue)
    }
}