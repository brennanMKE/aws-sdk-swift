// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum RiskDecisionType {
    case accounttakeover
    case block
    case norisk
    case sdkUnknown(String)
}

extension RiskDecisionType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [RiskDecisionType] {
        return [
            .accounttakeover,
            .block,
            .norisk,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .accounttakeover: return "AccountTakeover"
        case .block: return "Block"
        case .norisk: return "NoRisk"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = RiskDecisionType(rawValue: rawValue) ?? RiskDecisionType.sdkUnknown(rawValue)
    }
}
