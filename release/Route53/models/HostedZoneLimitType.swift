// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum HostedZoneLimitType {
    case maxRrsetsByZone
    case maxVpcsAssociatedByZone
    case sdkUnknown(String)
}

extension HostedZoneLimitType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [HostedZoneLimitType] {
        return [
            .maxRrsetsByZone,
            .maxVpcsAssociatedByZone,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .maxRrsetsByZone: return "MAX_RRSETS_BY_ZONE"
        case .maxVpcsAssociatedByZone: return "MAX_VPCS_ASSOCIATED_BY_ZONE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = HostedZoneLimitType(rawValue: rawValue) ?? HostedZoneLimitType.sdkUnknown(rawValue)
    }
}