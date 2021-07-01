// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum NetworkInterfaceType {
    case efa
    case interface
    case natgateway
    case sdkUnknown(String)
}

extension NetworkInterfaceType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [NetworkInterfaceType] {
        return [
            .efa,
            .interface,
            .natgateway,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .efa: return "efa"
        case .interface: return "interface"
        case .natgateway: return "natGateway"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = NetworkInterfaceType(rawValue: rawValue) ?? NetworkInterfaceType.sdkUnknown(rawValue)
    }
}