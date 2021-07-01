// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetLabelsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetLabelsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.labels = output.labels
            self.nextToken = output.nextToken
        } else {
            self.labels = nil
            self.nextToken = nil
        }
    }
}