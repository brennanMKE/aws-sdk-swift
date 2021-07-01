// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Timecode Config Source
public enum TimecodeConfigSource {
    case embedded
    case systemclock
    case zerobased
    case sdkUnknown(String)
}

extension TimecodeConfigSource : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [TimecodeConfigSource] {
        return [
            .embedded,
            .systemclock,
            .zerobased,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .embedded: return "EMBEDDED"
        case .systemclock: return "SYSTEMCLOCK"
        case .zerobased: return "ZEROBASED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = TimecodeConfigSource(rawValue: rawValue) ?? TimecodeConfigSource.sdkUnknown(rawValue)
    }
}