// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ExportFormat {
    case dynamodbJson
    case ion
    case sdkUnknown(String)
}

extension ExportFormat : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ExportFormat] {
        return [
            .dynamodbJson,
            .ion,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .dynamodbJson: return "DYNAMODB_JSON"
        case .ion: return "ION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ExportFormat(rawValue: rawValue) ?? ExportFormat.sdkUnknown(rawValue)
    }
}
