// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ResetImageAttributeName {
    case launchpermission
    case sdkUnknown(String)
}

extension ResetImageAttributeName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ResetImageAttributeName] {
        return [
            .launchpermission,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .launchpermission: return "launchPermission"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ResetImageAttributeName(rawValue: rawValue) ?? ResetImageAttributeName.sdkUnknown(rawValue)
    }
}