// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListLensReviewImprovementsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListLensReviewImprovementsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.improvementSummaries = output.improvementSummaries
            self.lensAlias = output.lensAlias
            self.milestoneNumber = output.milestoneNumber
            self.nextToken = output.nextToken
            self.workloadId = output.workloadId
        } else {
            self.improvementSummaries = nil
            self.lensAlias = nil
            self.milestoneNumber = 0
            self.nextToken = nil
            self.workloadId = nil
        }
    }
}