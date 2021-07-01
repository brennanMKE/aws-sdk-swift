// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AssociationFilterKey {
    case associationid
    case associationname
    case instanceid
    case lastexecutedafter
    case lastexecutedbefore
    case name
    case resourcegroupname
    case status
    case sdkUnknown(String)
}

extension AssociationFilterKey : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AssociationFilterKey] {
        return [
            .associationid,
            .associationname,
            .instanceid,
            .lastexecutedafter,
            .lastexecutedbefore,
            .name,
            .resourcegroupname,
            .status,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .associationid: return "AssociationId"
        case .associationname: return "AssociationName"
        case .instanceid: return "InstanceId"
        case .lastexecutedafter: return "LastExecutedAfter"
        case .lastexecutedbefore: return "LastExecutedBefore"
        case .name: return "Name"
        case .resourcegroupname: return "ResourceGroupName"
        case .status: return "AssociationStatusName"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AssociationFilterKey(rawValue: rawValue) ?? AssociationFilterKey.sdkUnknown(rawValue)
    }
}