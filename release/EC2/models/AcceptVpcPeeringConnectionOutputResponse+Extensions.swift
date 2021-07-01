// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AcceptVpcPeeringConnectionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: AcceptVpcPeeringConnectionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.vpcPeeringConnection = output.vpcPeeringConnection
        } else {
            self.vpcPeeringConnection = nil
        }
    }
}