// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum `Type` {
    case account
    case organization
    case sdkUnknown(String)
}

extension `Type` : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [`Type`] {
        return [
            .account,
            .organization,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .account: return "ACCOUNT"
        case .organization: return "ORGANIZATION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = `Type`(rawValue: rawValue) ?? `Type`.sdkUnknown(rawValue)
    }
}