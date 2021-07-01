// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ServiceType {
    case gateway
    case gatewayloadbalancer
    case interface
    case sdkUnknown(String)
}

extension ServiceType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ServiceType] {
        return [
            .gateway,
            .gatewayloadbalancer,
            .interface,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .gateway: return "Gateway"
        case .gatewayloadbalancer: return "GatewayLoadBalancer"
        case .interface: return "Interface"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ServiceType(rawValue: rawValue) ?? ServiceType.sdkUnknown(rawValue)
    }
}