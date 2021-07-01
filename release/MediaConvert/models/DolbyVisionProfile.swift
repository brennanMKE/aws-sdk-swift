// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// In the current MediaConvert implementation, the Dolby Vision profile is always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby Vision frame interleaved data.
public enum DolbyVisionProfile {
    case profile5
    case sdkUnknown(String)
}

extension DolbyVisionProfile : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DolbyVisionProfile] {
        return [
            .profile5,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .profile5: return "PROFILE_5"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DolbyVisionProfile(rawValue: rawValue) ?? DolbyVisionProfile.sdkUnknown(rawValue)
    }
}