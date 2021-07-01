// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum MergeStrategy {
    case overwrite
    case sdkUnknown(String)
}

extension MergeStrategy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [MergeStrategy] {
        return [
            .overwrite,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .overwrite: return "OVERWRITE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = MergeStrategy(rawValue: rawValue) ?? MergeStrategy.sdkUnknown(rawValue)
    }
}