// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteParametersOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteParametersOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.deletedParameters = output.deletedParameters
            self.invalidParameters = output.invalidParameters
        } else {
            self.deletedParameters = nil
            self.invalidParameters = nil
        }
    }
}