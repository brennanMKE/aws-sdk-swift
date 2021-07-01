// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetBlockPublicAccessConfigurationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetBlockPublicAccessConfigurationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.blockPublicAccessConfiguration = output.blockPublicAccessConfiguration
            self.blockPublicAccessConfigurationMetadata = output.blockPublicAccessConfigurationMetadata
        } else {
            self.blockPublicAccessConfiguration = nil
            self.blockPublicAccessConfigurationMetadata = nil
        }
    }
}