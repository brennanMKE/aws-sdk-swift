// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Specify whether to flag this audio track as descriptive video service (DVS) in your HLS parent manifest. When you choose Flag (FLAG), MediaConvert includes the parameter CHARACTERISTICS="public.accessibility.describes-video" in the EXT-X-MEDIA entry for this track. When you keep the default choice, Don't flag (DONT_FLAG), MediaConvert leaves this parameter out. The DVS flag can help with accessibility on Apple devices. For more information, see the Apple documentation.
public enum CmfcDescriptiveVideoServiceFlag {
    case dontFlag
    case flag
    case sdkUnknown(String)
}

extension CmfcDescriptiveVideoServiceFlag : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [CmfcDescriptiveVideoServiceFlag] {
        return [
            .dontFlag,
            .flag,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .dontFlag: return "DONT_FLAG"
        case .flag: return "FLAG"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = CmfcDescriptiveVideoServiceFlag(rawValue: rawValue) ?? CmfcDescriptiveVideoServiceFlag.sdkUnknown(rawValue)
    }
}