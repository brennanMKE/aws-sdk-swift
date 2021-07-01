// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SnapshotAttributeToSortBy {
    case createTime
    case sourceType
    case totalSize
    case sdkUnknown(String)
}

extension SnapshotAttributeToSortBy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SnapshotAttributeToSortBy] {
        return [
            .createTime,
            .sourceType,
            .totalSize,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .createTime: return "CREATE_TIME"
        case .sourceType: return "SOURCE_TYPE"
        case .totalSize: return "TOTAL_SIZE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SnapshotAttributeToSortBy(rawValue: rawValue) ?? SnapshotAttributeToSortBy.sdkUnknown(rawValue)
    }
}