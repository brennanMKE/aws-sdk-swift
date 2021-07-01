// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum GrowthType {
    case exponential
    case linear
    case sdkUnknown(String)
}

extension GrowthType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [GrowthType] {
        return [
            .exponential,
            .linear,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .exponential: return "EXPONENTIAL"
        case .linear: return "LINEAR"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = GrowthType(rawValue: rawValue) ?? GrowthType.sdkUnknown(rawValue)
    }
}