// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AuthMechanismValue {
    case `default`
    case mongodbCr
    case scramSha1
    case sdkUnknown(String)
}

extension AuthMechanismValue : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AuthMechanismValue] {
        return [
            .default,
            .mongodbCr,
            .scramSha1,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .default: return "default"
        case .mongodbCr: return "mongodb_cr"
        case .scramSha1: return "scram_sha_1"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AuthMechanismValue(rawValue: rawValue) ?? AuthMechanismValue.sdkUnknown(rawValue)
    }
}