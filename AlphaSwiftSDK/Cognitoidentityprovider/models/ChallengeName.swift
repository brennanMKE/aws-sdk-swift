// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ChallengeName {
    case mfa
    case password
    case sdkUnknown(String)
}

extension ChallengeName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ChallengeName] {
        return [
            .mfa,
            .password,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .mfa: return "Mfa"
        case .password: return "Password"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ChallengeName(rawValue: rawValue) ?? ChallengeName.sdkUnknown(rawValue)
    }
}
