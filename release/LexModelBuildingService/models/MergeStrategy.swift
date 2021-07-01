// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum MergeStrategy {
    case failOnConflict
    case overwriteLatest
    case sdkUnknown(String)
}

extension MergeStrategy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [MergeStrategy] {
        return [
            .failOnConflict,
            .overwriteLatest,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .failOnConflict: return "FAIL_ON_CONFLICT"
        case .overwriteLatest: return "OVERWRITE_LATEST"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = MergeStrategy(rawValue: rawValue) ?? MergeStrategy.sdkUnknown(rawValue)
    }
}