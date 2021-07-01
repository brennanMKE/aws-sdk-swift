// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteAutomaticTapeCreationPolicyOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteAutomaticTapeCreationPolicyOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.gatewayARN = output.gatewayARN
        } else {
            self.gatewayARN = nil
        }
    }
}