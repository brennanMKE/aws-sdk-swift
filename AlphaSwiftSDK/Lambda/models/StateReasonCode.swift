// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum StateReasonCode {
    case creating
    case enilimitexceeded
    case idle
    case imageaccessdenied
    case imagedeleted
    case insufficientrolepermissions
    case internalerror
    case invalidconfiguration
    case invalidimage
    case invalidsecuritygroup
    case invalidsubnet
    case restoring
    case subnetoutofipaddresses
    case sdkUnknown(String)
}

extension StateReasonCode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [StateReasonCode] {
        return [
            .creating,
            .enilimitexceeded,
            .idle,
            .imageaccessdenied,
            .imagedeleted,
            .insufficientrolepermissions,
            .internalerror,
            .invalidconfiguration,
            .invalidimage,
            .invalidsecuritygroup,
            .invalidsubnet,
            .restoring,
            .subnetoutofipaddresses,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .creating: return "Creating"
        case .enilimitexceeded: return "EniLimitExceeded"
        case .idle: return "Idle"
        case .imageaccessdenied: return "ImageAccessDenied"
        case .imagedeleted: return "ImageDeleted"
        case .insufficientrolepermissions: return "InsufficientRolePermissions"
        case .internalerror: return "InternalError"
        case .invalidconfiguration: return "InvalidConfiguration"
        case .invalidimage: return "InvalidImage"
        case .invalidsecuritygroup: return "InvalidSecurityGroup"
        case .invalidsubnet: return "InvalidSubnet"
        case .restoring: return "Restoring"
        case .subnetoutofipaddresses: return "SubnetOutOfIPAddresses"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = StateReasonCode(rawValue: rawValue) ?? StateReasonCode.sdkUnknown(rawValue)
    }
}
