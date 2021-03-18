// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct ListUserImportJobsOutputBody: Equatable {
    public let userImportJobs: [UserImportJobType]?
    public let paginationToken: String?
}

extension ListUserImportJobsOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case paginationToken = "PaginationToken"
        case userImportJobs = "UserImportJobs"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userImportJobsContainer = try containerValues.decodeIfPresent([UserImportJobType].self, forKey: .userImportJobs)
        var userImportJobsDecoded0:[UserImportJobType]? = nil
        if let userImportJobsContainer = userImportJobsContainer {
            userImportJobsDecoded0 = [UserImportJobType]()
            for structure0 in userImportJobsContainer {
                userImportJobsDecoded0?.append(structure0)
            }
        }
        userImportJobs = userImportJobsDecoded0
        let paginationTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .paginationToken)
        paginationToken = paginationTokenDecoded
    }
}