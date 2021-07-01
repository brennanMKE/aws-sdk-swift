// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum EirpUnits {
    case dbw
    case sdkUnknown(String)
}

extension EirpUnits : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [EirpUnits] {
        return [
            .dbw,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .dbw: return "dBW"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = EirpUnits(rawValue: rawValue) ?? EirpUnits.sdkUnknown(rawValue)
    }
}