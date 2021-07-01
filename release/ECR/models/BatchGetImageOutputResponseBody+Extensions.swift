// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchGetImageOutputResponseBody: Equatable {
    public let images: [Image]?
    public let failures: [ImageFailure]?
}

extension BatchGetImageOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case failures
        case images
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let imagesContainer = try containerValues.decodeIfPresent([Image?].self, forKey: .images)
        var imagesDecoded0:[Image]? = nil
        if let imagesContainer = imagesContainer {
            imagesDecoded0 = [Image]()
            for structure0 in imagesContainer {
                if let structure0 = structure0 {
                    imagesDecoded0?.append(structure0)
                }
            }
        }
        images = imagesDecoded0
        let failuresContainer = try containerValues.decodeIfPresent([ImageFailure?].self, forKey: .failures)
        var failuresDecoded0:[ImageFailure]? = nil
        if let failuresContainer = failuresContainer {
            failuresDecoded0 = [ImageFailure]()
            for structure0 in failuresContainer {
                if let structure0 = structure0 {
                    failuresDecoded0?.append(structure0)
                }
            }
        }
        failures = failuresDecoded0
    }
}