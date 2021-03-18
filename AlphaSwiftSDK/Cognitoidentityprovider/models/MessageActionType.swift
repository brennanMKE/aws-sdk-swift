// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum MessageActionType {
    case resend
    case suppress
    case sdkUnknown(String)
}

extension MessageActionType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [MessageActionType] {
        return [
            .resend,
            .suppress,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .resend: return "RESEND"
        case .suppress: return "SUPPRESS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = MessageActionType(rawValue: rawValue) ?? MessageActionType.sdkUnknown(rawValue)
    }
}