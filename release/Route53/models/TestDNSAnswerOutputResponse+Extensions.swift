// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TestDNSAnswerOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: TestDNSAnswerOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.`protocol` = output.`protocol`
            self.nameserver = output.nameserver
            self.recordData = output.recordData
            self.recordName = output.recordName
            self.recordType = output.recordType
            self.responseCode = output.responseCode
        } else {
            self.nameserver = nil
            self.`protocol` = nil
            self.recordData = nil
            self.recordName = nil
            self.recordType = nil
            self.responseCode = nil
        }
    }
}