// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ExportDataFormat {
    case csv
    case graphml
    case sdkUnknown(String)
}

extension ExportDataFormat : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ExportDataFormat] {
        return [
            .csv,
            .graphml,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .csv: return "CSV"
        case .graphml: return "GRAPHML"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ExportDataFormat(rawValue: rawValue) ?? ExportDataFormat.sdkUnknown(rawValue)
    }
}