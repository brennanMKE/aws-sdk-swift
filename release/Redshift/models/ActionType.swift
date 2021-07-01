// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ActionType {
    case recommendNodeConfig
    case resizeCluster
    case restoreCluster
    case sdkUnknown(String)
}

extension ActionType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ActionType] {
        return [
            .recommendNodeConfig,
            .resizeCluster,
            .restoreCluster,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .recommendNodeConfig: return "recommend-node-config"
        case .resizeCluster: return "resize-cluster"
        case .restoreCluster: return "restore-cluster"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ActionType(rawValue: rawValue) ?? ActionType.sdkUnknown(rawValue)
    }
}