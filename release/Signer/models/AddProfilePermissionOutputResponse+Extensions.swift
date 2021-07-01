// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AddProfilePermissionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: AddProfilePermissionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.revisionId = output.revisionId
        } else {
            self.revisionId = nil
        }
    }
}