// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListClustersOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListClustersOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.clusterListEntries = output.clusterListEntries
            self.nextToken = output.nextToken
        } else {
            self.clusterListEntries = nil
            self.nextToken = nil
        }
    }
}