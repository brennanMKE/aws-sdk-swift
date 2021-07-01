// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum APIName {
    case getClip
    case getDashStreamingSessionUrl
    case getHlsStreamingSessionUrl
    case getMedia
    case getMediaForFragmentList
    case listFragments
    case putMedia
    case sdkUnknown(String)
}

extension APIName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [APIName] {
        return [
            .getClip,
            .getDashStreamingSessionUrl,
            .getHlsStreamingSessionUrl,
            .getMedia,
            .getMediaForFragmentList,
            .listFragments,
            .putMedia,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .getClip: return "GET_CLIP"
        case .getDashStreamingSessionUrl: return "GET_DASH_STREAMING_SESSION_URL"
        case .getHlsStreamingSessionUrl: return "GET_HLS_STREAMING_SESSION_URL"
        case .getMedia: return "GET_MEDIA"
        case .getMediaForFragmentList: return "GET_MEDIA_FOR_FRAGMENT_LIST"
        case .listFragments: return "LIST_FRAGMENTS"
        case .putMedia: return "PUT_MEDIA"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = APIName(rawValue: rawValue) ?? APIName.sdkUnknown(rawValue)
    }
}