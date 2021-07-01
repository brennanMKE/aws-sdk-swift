// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetNamespaceDeletionStatusOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetNamespaceDeletionStatusOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.errorCode = output.errorCode
            self.errorMessage = output.errorMessage
            self.namespaceArn = output.namespaceArn
            self.namespaceName = output.namespaceName
            self.status = output.status
        } else {
            self.errorCode = nil
            self.errorMessage = nil
            self.namespaceArn = nil
            self.namespaceName = nil
            self.status = nil
        }
    }
}