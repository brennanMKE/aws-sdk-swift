// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.
public enum Mpeg2IntraDcPrecision {
    case auto
    case intraDcPrecision10
    case intraDcPrecision11
    case intraDcPrecision8
    case intraDcPrecision9
    case sdkUnknown(String)
}

extension Mpeg2IntraDcPrecision : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Mpeg2IntraDcPrecision] {
        return [
            .auto,
            .intraDcPrecision10,
            .intraDcPrecision11,
            .intraDcPrecision8,
            .intraDcPrecision9,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .auto: return "AUTO"
        case .intraDcPrecision10: return "INTRA_DC_PRECISION_10"
        case .intraDcPrecision11: return "INTRA_DC_PRECISION_11"
        case .intraDcPrecision8: return "INTRA_DC_PRECISION_8"
        case .intraDcPrecision9: return "INTRA_DC_PRECISION_9"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Mpeg2IntraDcPrecision(rawValue: rawValue) ?? Mpeg2IntraDcPrecision.sdkUnknown(rawValue)
    }
}