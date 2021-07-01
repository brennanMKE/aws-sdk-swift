// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// H264 Syntax
public enum H264Syntax {
    case `default`
    case rp2027
    case sdkUnknown(String)
}

extension H264Syntax : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [H264Syntax] {
        return [
            .default,
            .rp2027,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .default: return "DEFAULT"
        case .rp2027: return "RP2027"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = H264Syntax(rawValue: rawValue) ?? H264Syntax.sdkUnknown(rawValue)
    }
}