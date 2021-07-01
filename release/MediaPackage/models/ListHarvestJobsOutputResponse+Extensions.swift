// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListHarvestJobsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListHarvestJobsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.harvestJobs = output.harvestJobs
            self.nextToken = output.nextToken
        } else {
            self.harvestJobs = nil
            self.nextToken = nil
        }
    }
}