// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateVpcPeeringConnectionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateVpcPeeringConnectionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.vpcPeeringConnection = output.vpcPeeringConnection
        } else {
            self.vpcPeeringConnection = nil
        }
    }
}