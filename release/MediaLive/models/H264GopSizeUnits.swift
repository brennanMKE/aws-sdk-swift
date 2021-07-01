// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// H264 Gop Size Units
public enum H264GopSizeUnits {
    case frames
    case seconds
    case sdkUnknown(String)
}

extension H264GopSizeUnits : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [H264GopSizeUnits] {
        return [
            .frames,
            .seconds,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .frames: return "FRAMES"
        case .seconds: return "SECONDS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = H264GopSizeUnits(rawValue: rawValue) ?? H264GopSizeUnits.sdkUnknown(rawValue)
    }
}