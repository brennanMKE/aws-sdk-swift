// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum CompromisedCredentialsEventActionType {
    case block
    case noAction
    case sdkUnknown(String)
}

extension CompromisedCredentialsEventActionType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [CompromisedCredentialsEventActionType] {
        return [
            .block,
            .noAction,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .block: return "BLOCK"
        case .noAction: return "NO_ACTION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = CompromisedCredentialsEventActionType(rawValue: rawValue) ?? CompromisedCredentialsEventActionType.sdkUnknown(rawValue)
    }
}