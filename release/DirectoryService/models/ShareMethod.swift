// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ShareMethod {
    case handshake
    case organizations
    case sdkUnknown(String)
}

extension ShareMethod : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ShareMethod] {
        return [
            .handshake,
            .organizations,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .handshake: return "HANDSHAKE"
        case .organizations: return "ORGANIZATIONS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ShareMethod(rawValue: rawValue) ?? ShareMethod.sdkUnknown(rawValue)
    }
}