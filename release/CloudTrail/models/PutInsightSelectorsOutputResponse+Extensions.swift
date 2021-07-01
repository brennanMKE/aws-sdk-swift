// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutInsightSelectorsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PutInsightSelectorsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.insightSelectors = output.insightSelectors
            self.trailARN = output.trailARN
        } else {
            self.insightSelectors = nil
            self.trailARN = nil
        }
    }
}