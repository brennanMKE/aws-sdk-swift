// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DetectTextOutputResponseBody: Equatable {
    public let textDetections: [TextDetection]?
    public let textModelVersion: String?
}

extension DetectTextOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case textDetections = "TextDetections"
        case textModelVersion = "TextModelVersion"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let textDetectionsContainer = try containerValues.decodeIfPresent([TextDetection?].self, forKey: .textDetections)
        var textDetectionsDecoded0:[TextDetection]? = nil
        if let textDetectionsContainer = textDetectionsContainer {
            textDetectionsDecoded0 = [TextDetection]()
            for structure0 in textDetectionsContainer {
                if let structure0 = structure0 {
                    textDetectionsDecoded0?.append(structure0)
                }
            }
        }
        textDetections = textDetectionsDecoded0
        let textModelVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .textModelVersion)
        textModelVersion = textModelVersionDecoded
    }
}