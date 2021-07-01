// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AssociationExecutionTargetsFilterKey {
    case resourceid
    case resourcetype
    case status
    case sdkUnknown(String)
}

extension AssociationExecutionTargetsFilterKey : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AssociationExecutionTargetsFilterKey] {
        return [
            .resourceid,
            .resourcetype,
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
        case .resourceid: return "ResourceId"
        case .resourcetype: return "ResourceType"
        case .status: return "Status"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AssociationExecutionTargetsFilterKey(rawValue: rawValue) ?? AssociationExecutionTargetsFilterKey.sdkUnknown(rawValue)
    }
}