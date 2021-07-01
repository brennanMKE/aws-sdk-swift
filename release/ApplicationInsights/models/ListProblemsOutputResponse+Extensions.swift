// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListProblemsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListProblemsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.problemList = output.problemList
        } else {
            self.nextToken = nil
            self.problemList = nil
        }
    }
}