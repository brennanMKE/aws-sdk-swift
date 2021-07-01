// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeCodeCoveragesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeCodeCoveragesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.codeCoverages = output.codeCoverages
            self.nextToken = output.nextToken
        } else {
            self.codeCoverages = nil
            self.nextToken = nil
        }
    }
}