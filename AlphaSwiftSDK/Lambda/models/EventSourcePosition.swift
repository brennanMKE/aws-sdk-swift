// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum EventSourcePosition {
    case atTimestamp
    case latest
    case trimHorizon
    case sdkUnknown(String)
}

extension EventSourcePosition : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [EventSourcePosition] {
        return [
            .atTimestamp,
            .latest,
            .trimHorizon,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .atTimestamp: return "AT_TIMESTAMP"
        case .latest: return "LATEST"
        case .trimHorizon: return "TRIM_HORIZON"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = EventSourcePosition(rawValue: rawValue) ?? EventSourcePosition.sdkUnknown(rawValue)
    }
}
