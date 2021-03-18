// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AdvancedSecurityModeType {
    case audit
    case enforced
    case off
    case sdkUnknown(String)
}

extension AdvancedSecurityModeType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AdvancedSecurityModeType] {
        return [
            .audit,
            .enforced,
            .off,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .audit: return "AUDIT"
        case .enforced: return "ENFORCED"
        case .off: return "OFF"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AdvancedSecurityModeType(rawValue: rawValue) ?? AdvancedSecurityModeType.sdkUnknown(rawValue)
    }
}
