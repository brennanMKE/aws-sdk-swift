// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetAssetPropertyAggregatesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetAssetPropertyAggregatesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.aggregatedValues = output.aggregatedValues
            self.nextToken = output.nextToken
        } else {
            self.aggregatedValues = nil
            self.nextToken = nil
        }
    }
}