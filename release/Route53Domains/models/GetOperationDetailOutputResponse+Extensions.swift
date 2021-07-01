// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetOperationDetailOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetOperationDetailOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.domainName = output.domainName
            self.message = output.message
            self.operationId = output.operationId
            self.status = output.status
            self.submittedDate = output.submittedDate
            self.type = output.type
        } else {
            self.domainName = nil
            self.message = nil
            self.operationId = nil
            self.status = nil
            self.submittedDate = nil
            self.type = nil
        }
    }
}