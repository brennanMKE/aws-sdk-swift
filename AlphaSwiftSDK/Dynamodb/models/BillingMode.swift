// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum BillingMode {
    case payPerRequest
    case provisioned
    case sdkUnknown(String)
}

extension BillingMode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [BillingMode] {
        return [
            .payPerRequest,
            .provisioned,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .payPerRequest: return "PAY_PER_REQUEST"
        case .provisioned: return "PROVISIONED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = BillingMode(rawValue: rawValue) ?? BillingMode.sdkUnknown(rawValue)
    }
}
