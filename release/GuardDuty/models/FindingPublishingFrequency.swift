// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum FindingPublishingFrequency {
    case fifteenMinutes
    case oneHour
    case sixHours
    case sdkUnknown(String)
}

extension FindingPublishingFrequency : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [FindingPublishingFrequency] {
        return [
            .fifteenMinutes,
            .oneHour,
            .sixHours,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .fifteenMinutes: return "FIFTEEN_MINUTES"
        case .oneHour: return "ONE_HOUR"
        case .sixHours: return "SIX_HOURS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = FindingPublishingFrequency(rawValue: rawValue) ?? FindingPublishingFrequency.sdkUnknown(rawValue)
    }
}