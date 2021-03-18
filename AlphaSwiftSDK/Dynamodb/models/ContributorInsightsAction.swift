// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ContributorInsightsAction {
    case disable
    case enable
    case sdkUnknown(String)
}

extension ContributorInsightsAction : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ContributorInsightsAction] {
        return [
            .disable,
            .enable,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .disable: return "DISABLE"
        case .enable: return "ENABLE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ContributorInsightsAction(rawValue: rawValue) ?? ContributorInsightsAction.sdkUnknown(rawValue)
    }
}
