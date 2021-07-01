// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeDetectorOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeDetectorOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.detectorId = output.detectorId
            self.detectorVersionSummaries = output.detectorVersionSummaries
            self.nextToken = output.nextToken
        } else {
            self.arn = nil
            self.detectorId = nil
            self.detectorVersionSummaries = nil
            self.nextToken = nil
        }
    }
}