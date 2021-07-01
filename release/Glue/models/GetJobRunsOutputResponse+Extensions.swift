// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetJobRunsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetJobRunsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.jobRuns = output.jobRuns
            self.nextToken = output.nextToken
        } else {
            self.jobRuns = nil
            self.nextToken = nil
        }
    }
}