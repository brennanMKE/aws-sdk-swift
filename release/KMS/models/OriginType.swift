// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum OriginType {
    case awsCloudhsm
    case awsKms
    case external
    case sdkUnknown(String)
}

extension OriginType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [OriginType] {
        return [
            .awsCloudhsm,
            .awsKms,
            .external,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .awsCloudhsm: return "AWS_CLOUDHSM"
        case .awsKms: return "AWS_KMS"
        case .external: return "EXTERNAL"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = OriginType(rawValue: rawValue) ?? OriginType.sdkUnknown(rawValue)
    }
}