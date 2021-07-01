// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateFindingsFilterInputBody: Equatable {
    public let action: FindingsFilterAction?
    public let clientToken: String?
    public let description: String?
    public let findingCriteria: FindingCriteria?
    public let name: String?
    public let position: Int
    public let tags: [String:String]?
}

extension CreateFindingsFilterInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case action = "action"
        case clientToken = "clientToken"
        case description = "description"
        case findingCriteria = "findingCriteria"
        case name = "name"
        case position = "position"
        case tags = "tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let actionDecoded = try containerValues.decodeIfPresent(FindingsFilterAction.self, forKey: .action)
        action = actionDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let findingCriteriaDecoded = try containerValues.decodeIfPresent(FindingCriteria.self, forKey: .findingCriteria)
        findingCriteria = findingCriteriaDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let positionDecoded = try containerValues.decode(Int.self, forKey: .position)
        position = positionDecoded
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