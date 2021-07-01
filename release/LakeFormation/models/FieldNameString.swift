// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum FieldNameString {
    case lastModified
    case resourceArn
    case roleArn
    case sdkUnknown(String)
}

extension FieldNameString : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [FieldNameString] {
        return [
            .lastModified,
            .resourceArn,
            .roleArn,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .lastModified: return "LAST_MODIFIED"
        case .resourceArn: return "RESOURCE_ARN"
        case .roleArn: return "ROLE_ARN"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = FieldNameString(rawValue: rawValue) ?? FieldNameString.sdkUnknown(rawValue)
    }
}