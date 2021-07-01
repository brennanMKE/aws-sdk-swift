// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DetectSyntaxOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DetectSyntaxOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.syntaxTokens = output.syntaxTokens
        } else {
            self.syntaxTokens = nil
        }
    }
}