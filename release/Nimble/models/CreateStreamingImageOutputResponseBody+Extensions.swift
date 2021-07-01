// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateStreamingImageOutputResponseBody: Equatable {
    public let streamingImage: StreamingImage?
}

extension CreateStreamingImageOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case streamingImage = "streamingImage"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamingImageDecoded = try containerValues.decodeIfPresent(StreamingImage.self, forKey: .streamingImage)
        streamingImage = streamingImageDecoded
    }
}