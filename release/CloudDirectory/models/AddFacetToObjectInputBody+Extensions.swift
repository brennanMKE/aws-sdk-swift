// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AddFacetToObjectInputBody: Equatable {
    public let schemaFacet: SchemaFacet?
    public let objectAttributeList: [AttributeKeyAndValue]?
    public let objectReference: ObjectReference?
}

extension AddFacetToObjectInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case objectAttributeList = "ObjectAttributeList"
        case objectReference = "ObjectReference"
        case schemaFacet = "SchemaFacet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let schemaFacetDecoded = try containerValues.decodeIfPresent(SchemaFacet.self, forKey: .schemaFacet)
        schemaFacet = schemaFacetDecoded
        let objectAttributeListContainer = try containerValues.decodeIfPresent([AttributeKeyAndValue?].self, forKey: .objectAttributeList)
        var objectAttributeListDecoded0:[AttributeKeyAndValue]? = nil
        if let objectAttributeListContainer = objectAttributeListContainer {
            objectAttributeListDecoded0 = [AttributeKeyAndValue]()
            for structure0 in objectAttributeListContainer {
                if let structure0 = structure0 {
                    objectAttributeListDecoded0?.append(structure0)
                }
            }
        }
        objectAttributeList = objectAttributeListDecoded0
        let objectReferenceDecoded = try containerValues.decodeIfPresent(ObjectReference.self, forKey: .objectReference)
        objectReference = objectReferenceDecoded
    }
}