// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetMetricDataOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetMetricDataOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.metricResults = output.metricResults
            self.nextToken = output.nextToken
        } else {
            self.metricResults = nil
            self.nextToken = nil
        }
    }
}