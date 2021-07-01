// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateOrganizationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateOrganizationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.organization = output.organization
        } else {
            self.organization = nil
        }
    }
}