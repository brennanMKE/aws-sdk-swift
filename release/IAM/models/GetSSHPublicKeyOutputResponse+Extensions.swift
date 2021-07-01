// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetSSHPublicKeyOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetSSHPublicKeyOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.sSHPublicKey = output.sSHPublicKey
        } else {
            self.sSHPublicKey = nil
        }
    }
}