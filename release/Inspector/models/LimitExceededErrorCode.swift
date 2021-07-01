// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum LimitExceededErrorCode {
    case assessmentRunLimitExceeded
    case assessmentTargetLimitExceeded
    case assessmentTemplateLimitExceeded
    case eventSubscriptionLimitExceeded
    case resourceGroupLimitExceeded
    case sdkUnknown(String)
}

extension LimitExceededErrorCode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [LimitExceededErrorCode] {
        return [
            .assessmentRunLimitExceeded,
            .assessmentTargetLimitExceeded,
            .assessmentTemplateLimitExceeded,
            .eventSubscriptionLimitExceeded,
            .resourceGroupLimitExceeded,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .assessmentRunLimitExceeded: return "ASSESSMENT_RUN_LIMIT_EXCEEDED"
        case .assessmentTargetLimitExceeded: return "ASSESSMENT_TARGET_LIMIT_EXCEEDED"
        case .assessmentTemplateLimitExceeded: return "ASSESSMENT_TEMPLATE_LIMIT_EXCEEDED"
        case .eventSubscriptionLimitExceeded: return "EVENT_SUBSCRIPTION_LIMIT_EXCEEDED"
        case .resourceGroupLimitExceeded: return "RESOURCE_GROUP_LIMIT_EXCEEDED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = LimitExceededErrorCode(rawValue: rawValue) ?? LimitExceededErrorCode.sdkUnknown(rawValue)
    }
}