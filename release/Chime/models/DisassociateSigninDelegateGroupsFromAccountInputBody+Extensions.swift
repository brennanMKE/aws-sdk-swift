// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DisassociateSigninDelegateGroupsFromAccountInputBody: Equatable {
    public let groupNames: [String]?
}

extension DisassociateSigninDelegateGroupsFromAccountInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case groupNames = "GroupNames"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .groupNames)
        var groupNamesDecoded0:[String]? = nil
        if let groupNamesContainer = groupNamesContainer {
            groupNamesDecoded0 = [String]()
            for string0 in groupNamesContainer {
                if let string0 = string0 {
                    groupNamesDecoded0?.append(string0)
                }
            }
        }
        groupNames = groupNamesDecoded0
    }
}