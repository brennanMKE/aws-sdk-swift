// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum TrafficRoutingType {
    case allatonce
    case timebasedcanary
    case timebasedlinear
    case sdkUnknown(String)
}

extension TrafficRoutingType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [TrafficRoutingType] {
        return [
            .allatonce,
            .timebasedcanary,
            .timebasedlinear,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .allatonce: return "AllAtOnce"
        case .timebasedcanary: return "TimeBasedCanary"
        case .timebasedlinear: return "TimeBasedLinear"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = TrafficRoutingType(rawValue: rawValue) ?? TrafficRoutingType.sdkUnknown(rawValue)
    }
}