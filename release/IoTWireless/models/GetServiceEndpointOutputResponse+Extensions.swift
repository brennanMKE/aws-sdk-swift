// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetServiceEndpointOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetServiceEndpointOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.serverTrust = output.serverTrust
            self.serviceEndpoint = output.serviceEndpoint
            self.serviceType = output.serviceType
        } else {
            self.serverTrust = nil
            self.serviceEndpoint = nil
            self.serviceType = nil
        }
    }
}