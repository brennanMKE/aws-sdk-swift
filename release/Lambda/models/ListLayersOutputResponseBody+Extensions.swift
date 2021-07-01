// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListLayersOutputResponseBody: Equatable {
    public let nextMarker: String?
    public let layers: [LayersListItem]?
}

extension ListLayersOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case layers = "Layers"
        case nextMarker = "NextMarker"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextMarkerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextMarker)
        nextMarker = nextMarkerDecoded
        let layersContainer = try containerValues.decodeIfPresent([LayersListItem?].self, forKey: .layers)
        var layersDecoded0:[LayersListItem]? = nil
        if let layersContainer = layersContainer {
            layersDecoded0 = [LayersListItem]()
            for structure0 in layersContainer {
                if let structure0 = structure0 {
                    layersDecoded0?.append(structure0)
                }
            }
        }
        layers = layersDecoded0
    }
}