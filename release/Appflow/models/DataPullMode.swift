// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DataPullMode {
    case complete
    case incremental
    case sdkUnknown(String)
}

extension DataPullMode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DataPullMode] {
        return [
            .complete,
            .incremental,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .complete: return "Complete"
        case .incremental: return "Incremental"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DataPullMode(rawValue: rawValue) ?? DataPullMode.sdkUnknown(rawValue)
    }
}