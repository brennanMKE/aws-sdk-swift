// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> The type of EBS volume, standard, gp2, or io1. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a>for more information.</p>
public enum VolumeType {
    case gp2
    case io1
    case standard
    case sdkUnknown(String)
}

extension VolumeType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [VolumeType] {
        return [
            .gp2,
            .io1,
            .standard,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .gp2: return "gp2"
        case .io1: return "io1"
        case .standard: return "standard"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = VolumeType(rawValue: rawValue) ?? VolumeType.sdkUnknown(rawValue)
    }
}