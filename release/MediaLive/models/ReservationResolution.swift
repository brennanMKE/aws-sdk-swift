// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Resolution based on lines of vertical resolution; SD is less than 720 lines, HD is 720 to 1080 lines, FHD is 1080 lines, UHD is greater than 1080 lines
public enum ReservationResolution {
    case fhd
    case hd
    case sd
    case uhd
    case sdkUnknown(String)
}

extension ReservationResolution : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ReservationResolution] {
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
        self = ReservationResolution(rawValue: rawValue) ?? ReservationResolution.sdkUnknown(rawValue)
    }
}