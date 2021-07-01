// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetGatewayGroupOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetGatewayGroupOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.gatewayGroup = output.gatewayGroup
        } else {
            self.gatewayGroup = nil
        }
    }
}