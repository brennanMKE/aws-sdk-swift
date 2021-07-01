// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteRegistryPolicyOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteRegistryPolicyOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.policyText = output.policyText
            self.registryId = output.registryId
        } else {
            self.policyText = nil
            self.registryId = nil
        }
    }
}