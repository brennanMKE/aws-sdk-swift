// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum PlacementGroupState {
    case available
    case deleted
    case deleting
    case pending
    case sdkUnknown(String)
}

extension PlacementGroupState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [PlacementGroupState] {
        return [
            .available,
            .deleted,
            .deleting,
            .pending,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .available: return "available"
        case .deleted: return "deleted"
        case .deleting: return "deleting"
        case .pending: return "pending"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = PlacementGroupState(rawValue: rawValue) ?? PlacementGroupState.sdkUnknown(rawValue)
    }
}