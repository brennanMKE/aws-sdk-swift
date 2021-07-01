// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListModelPackagesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListModelPackagesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.modelPackageSummaryList = output.modelPackageSummaryList
            self.nextToken = output.nextToken
        } else {
            self.modelPackageSummaryList = nil
            self.nextToken = nil
        }
    }
}