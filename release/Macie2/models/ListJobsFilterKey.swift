// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The property to use to filter the results. Valid values are:</p>
public enum ListJobsFilterKey {
    case createdat
    case jobstatus
    case jobtype
    case name
    case sdkUnknown(String)
}

extension ListJobsFilterKey : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ListJobsFilterKey] {
        return [
            .createdat,
            .jobstatus,
            .jobtype,
            .name,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .createdat: return "createdAt"
        case .jobstatus: return "jobStatus"
        case .jobtype: return "jobType"
        case .name: return "name"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ListJobsFilterKey(rawValue: rawValue) ?? ListJobsFilterKey.sdkUnknown(rawValue)
    }
}