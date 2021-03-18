// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension GetCodeSigningConfigOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetCodeSigningConfigOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.codeSigningConfig = output.codeSigningConfig
        } else {
            self.codeSigningConfig = nil
        }
    }
}
