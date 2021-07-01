// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAssetOutputResponseBody: Equatable {
    public let arn: String?
    public let createdAt: String?
    public let egressEndpoints: [EgressEndpoint]?
    public let id: String?
    public let packagingGroupId: String?
    public let resourceId: String?
    public let sourceArn: String?
    public let sourceRoleArn: String?
    public let tags: [String:String]?
}

extension CreateAssetOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case arn = "arn"
        case createdAt = "createdAt"
        case egressEndpoints = "egressEndpoints"
        case id = "id"
        case packagingGroupId = "packagingGroupId"
        case resourceId = "resourceId"
        case sourceArn = "sourceArn"
        case sourceRoleArn = "sourceRoleArn"
        case tags = "tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let egressEndpointsContainer = try containerValues.decodeIfPresent([EgressEndpoint?].self, forKey: .egressEndpoints)
        var egressEndpointsDecoded0:[EgressEndpoint]? = nil
        if let egressEndpointsContainer = egressEndpointsContainer {
            egressEndpointsDecoded0 = [EgressEndpoint]()
            for structure0 in egressEndpointsContainer {
                if let structure0 = structure0 {
                    egressEndpointsDecoded0?.append(structure0)
                }
            }
        }
        egressEndpoints = egressEndpointsDecoded0
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let packagingGroupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .packagingGroupId)
        packagingGroupId = packagingGroupIdDecoded
        let resourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceId)
        resourceId = resourceIdDecoded
        let sourceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceArn)
        sourceArn = sourceArnDecoded
        let sourceRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceRoleArn)
        sourceRoleArn = sourceRoleArnDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, __string0) in tagsContainer {
                if let __string0 = __string0 {
                    tagsDecoded0?[key0] = __string0
                }
            }
        }
        tags = tagsDecoded0
    }
}