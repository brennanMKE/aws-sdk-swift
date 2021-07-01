// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateTransitGatewayRouteTableOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateTransitGatewayRouteTableOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.transitGatewayRouteTable = output.transitGatewayRouteTable
        } else {
            self.transitGatewayRouteTable = nil
        }
    }
}