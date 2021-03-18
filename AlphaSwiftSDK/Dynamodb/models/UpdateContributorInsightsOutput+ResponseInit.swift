// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension UpdateContributorInsightsOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateContributorInsightsOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.contributorInsightsStatus = output.contributorInsightsStatus
            self.indexName = output.indexName
            self.tableName = output.tableName
        } else {
            self.contributorInsightsStatus = nil
            self.indexName = nil
            self.tableName = nil
        }
    }
}
