// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeEventBusOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeEventBusOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.name = output.name
            self.policy = output.policy
        } else {
            self.arn = nil
            self.name = nil
            self.policy = nil
        }
    }
}