// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListFacesOutputResponseBody: Equatable {
    public let faces: [Face]?
    public let nextToken: String?
    public let faceModelVersion: String?
}

extension ListFacesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case faceModelVersion = "FaceModelVersion"
        case faces = "Faces"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let facesContainer = try containerValues.decodeIfPresent([Face?].self, forKey: .faces)
        var facesDecoded0:[Face]? = nil
        if let facesContainer = facesContainer {
            facesDecoded0 = [Face]()
            for structure0 in facesContainer {
                if let structure0 = structure0 {
                    facesDecoded0?.append(structure0)
                }
            }
        }
        faces = facesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let faceModelVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .faceModelVersion)
        faceModelVersion = faceModelVersionDecoded
    }
}