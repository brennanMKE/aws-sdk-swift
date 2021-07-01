// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeTargetHealthOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeTargetHealthOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.targetHealthDescriptions = output.targetHealthDescriptions
        } else {
            self.targetHealthDescriptions = nil
        }
    }
}