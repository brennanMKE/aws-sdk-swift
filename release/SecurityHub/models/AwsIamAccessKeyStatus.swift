// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AwsIamAccessKeyStatus {
    case active
    case inactive
    case sdkUnknown(String)
}

extension AwsIamAccessKeyStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AwsIamAccessKeyStatus] {
        return [
            .active,
            .inactive,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .active: return "Active"
        case .inactive: return "Inactive"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AwsIamAccessKeyStatus(rawValue: rawValue) ?? AwsIamAccessKeyStatus.sdkUnknown(rawValue)
    }
}