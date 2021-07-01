// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Maximum CDI input resolution; SD is 480i and 576i up to 30 frames-per-second (fps), HD is 720p up to 60 fps / 1080i up to 30 fps, FHD is 1080p up to 60 fps, UHD is 2160p up to 60 fps
public enum CdiInputResolution {
    case fhd
    case hd
    case sd
    case uhd
    case sdkUnknown(String)
}

extension CdiInputResolution : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [CdiInputResolution] {
        return [
            .fhd,
            .hd,
            .sd,
            .uhd,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .fhd: return "FHD"
        case .hd: return "HD"
        case .sd: return "SD"
        case .uhd: return "UHD"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = CdiInputResolution(rawValue: rawValue) ?? CdiInputResolution.sdkUnknown(rawValue)
    }
}