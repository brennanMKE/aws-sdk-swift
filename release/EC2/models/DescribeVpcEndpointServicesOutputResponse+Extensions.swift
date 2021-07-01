// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeVpcEndpointServicesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeVpcEndpointServicesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.serviceDetails = output.serviceDetails
            self.serviceNames = output.serviceNames
        } else {
            self.nextToken = nil
            self.serviceDetails = nil
            self.serviceNames = nil
        }
    }
}