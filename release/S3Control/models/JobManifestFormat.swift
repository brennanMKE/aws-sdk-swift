// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum JobManifestFormat {
    case s3batchoperationsCsv20180820
    case s3inventoryreportCsv20161130
    case sdkUnknown(String)
}

extension JobManifestFormat : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [JobManifestFormat] {
        return [
            .s3batchoperationsCsv20180820,
            .s3inventoryreportCsv20161130,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .s3batchoperationsCsv20180820: return "S3BatchOperations_CSV_20180820"
        case .s3inventoryreportCsv20161130: return "S3InventoryReport_CSV_20161130"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = JobManifestFormat(rawValue: rawValue) ?? JobManifestFormat.sdkUnknown(rawValue)
    }
}