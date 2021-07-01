// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeEndpointTypesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeEndpointTypesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.marker = output.marker
            self.supportedEndpointTypes = output.supportedEndpointTypes
        } else {
            self.marker = nil
            self.supportedEndpointTypes = nil
        }
    }
}