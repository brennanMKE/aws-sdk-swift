// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum VolumeStatusName {
    case ioEnabled
    case ioPerformance
    case sdkUnknown(String)
}

extension VolumeStatusName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [VolumeStatusName] {
        return [
            .ioEnabled,
            .ioPerformance,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .ioEnabled: return "io-enabled"
        case .ioPerformance: return "io-performance"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = VolumeStatusName(rawValue: rawValue) ?? VolumeStatusName.sdkUnknown(rawValue)
    }
}