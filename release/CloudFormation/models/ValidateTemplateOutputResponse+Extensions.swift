// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ValidateTemplateOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ValidateTemplateOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.capabilities = output.capabilities
            self.capabilitiesReason = output.capabilitiesReason
            self.declaredTransforms = output.declaredTransforms
            self.description = output.description
            self.parameters = output.parameters
        } else {
            self.capabilities = nil
            self.capabilitiesReason = nil
            self.declaredTransforms = nil
            self.description = nil
            self.parameters = nil
        }
    }
}