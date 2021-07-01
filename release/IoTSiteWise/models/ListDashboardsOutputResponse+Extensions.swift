// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListDashboardsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListDashboardsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dashboardSummaries = output.dashboardSummaries
            self.nextToken = output.nextToken
        } else {
            self.dashboardSummaries = nil
            self.nextToken = nil
        }
    }
}