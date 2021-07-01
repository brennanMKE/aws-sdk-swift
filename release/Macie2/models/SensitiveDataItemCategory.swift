// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The category of sensitive data that was detected and produced the finding. Possible values are:</p>
public enum SensitiveDataItemCategory {
    case credentials
    case customIdentifier
    case financialInformation
    case personalInformation
    case sdkUnknown(String)
}

extension SensitiveDataItemCategory : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SensitiveDataItemCategory] {
        return [
            .credentials,
            .customIdentifier,
            .financialInformation,
            .personalInformation,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .credentials: return "CREDENTIALS"
        case .customIdentifier: return "CUSTOM_IDENTIFIER"
        case .financialInformation: return "FINANCIAL_INFORMATION"
        case .personalInformation: return "PERSONAL_INFORMATION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SensitiveDataItemCategory(rawValue: rawValue) ?? SensitiveDataItemCategory.sdkUnknown(rawValue)
    }
}