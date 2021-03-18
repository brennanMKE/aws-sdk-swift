// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ThrottleReason {
    case callerratelimitexceeded
    case concurrentinvocationlimitexceeded
    case functioninvocationratelimitexceeded
    case reservedfunctionconcurrentinvocationlimitexceeded
    case reservedfunctioninvocationratelimitexceeded
    case sdkUnknown(String)
}

extension ThrottleReason : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ThrottleReason] {
        return [
            .callerratelimitexceeded,
            .concurrentinvocationlimitexceeded,
            .functioninvocationratelimitexceeded,
            .reservedfunctionconcurrentinvocationlimitexceeded,
            .reservedfunctioninvocationratelimitexceeded,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .callerratelimitexceeded: return "CallerRateLimitExceeded"
        case .concurrentinvocationlimitexceeded: return "ConcurrentInvocationLimitExceeded"
        case .functioninvocationratelimitexceeded: return "FunctionInvocationRateLimitExceeded"
        case .reservedfunctionconcurrentinvocationlimitexceeded: return "ReservedFunctionConcurrentInvocationLimitExceeded"
        case .reservedfunctioninvocationratelimitexceeded: return "ReservedFunctionInvocationRateLimitExceeded"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ThrottleReason(rawValue: rawValue) ?? ThrottleReason.sdkUnknown(rawValue)
    }
}
