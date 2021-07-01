// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum BusinessReportInterval {
    case oneDay
    case oneWeek
    case thirtyDays
    case sdkUnknown(String)
}

extension BusinessReportInterval : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [BusinessReportInterval] {
        return [
            .oneDay,
            .oneWeek,
            .thirtyDays,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .oneDay: return "ONE_DAY"
        case .oneWeek: return "ONE_WEEK"
        case .thirtyDays: return "THIRTY_DAYS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = BusinessReportInterval(rawValue: rawValue) ?? BusinessReportInterval.sdkUnknown(rawValue)
    }
}