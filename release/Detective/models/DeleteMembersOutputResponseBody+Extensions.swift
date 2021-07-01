// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteMembersOutputResponseBody: Equatable {
    public let accountIds: [String]?
    public let unprocessedAccounts: [UnprocessedAccount]?
}

extension DeleteMembersOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case accountIds = "AccountIds"
        case unprocessedAccounts = "UnprocessedAccounts"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accountIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .accountIds)
        var accountIdsDecoded0:[String]? = nil
        if let accountIdsContainer = accountIdsContainer {
            accountIdsDecoded0 = [String]()
            for string0 in accountIdsContainer {
                if let string0 = string0 {
                    accountIdsDecoded0?.append(string0)
                }
            }
        }
        accountIds = accountIdsDecoded0
        let unprocessedAccountsContainer = try containerValues.decodeIfPresent([UnprocessedAccount?].self, forKey: .unprocessedAccounts)
        var unprocessedAccountsDecoded0:[UnprocessedAccount]? = nil
        if let unprocessedAccountsContainer = unprocessedAccountsContainer {
            unprocessedAccountsDecoded0 = [UnprocessedAccount]()
            for structure0 in unprocessedAccountsContainer {
                if let structure0 = structure0 {
                    unprocessedAccountsDecoded0?.append(structure0)
                }
            }
        }
        unprocessedAccounts = unprocessedAccountsDecoded0
    }
}