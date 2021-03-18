// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum UserPoolMfaType {
    case off
    case on
    case `optional`
    case sdkUnknown(String)
}

extension UserPoolMfaType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [UserPoolMfaType] {
        return [
            .off,
            .on,
            .`optional`,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .off: return "OFF"
        case .on: return "ON"
        case .`optional`: return "OPTIONAL"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = UserPoolMfaType(rawValue: rawValue) ?? UserPoolMfaType.sdkUnknown(rawValue)
    }
}