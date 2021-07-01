// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteAnalysisSchemeOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteAnalysisSchemeOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.analysisScheme = output.analysisScheme
        } else {
            self.analysisScheme = nil
        }
    }
}