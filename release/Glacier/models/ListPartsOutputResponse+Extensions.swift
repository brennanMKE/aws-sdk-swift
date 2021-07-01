// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListPartsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListPartsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.archiveDescription = output.archiveDescription
            self.creationDate = output.creationDate
            self.marker = output.marker
            self.multipartUploadId = output.multipartUploadId
            self.partSizeInBytes = output.partSizeInBytes
            self.parts = output.parts
            self.vaultARN = output.vaultARN
        } else {
            self.archiveDescription = nil
            self.creationDate = nil
            self.marker = nil
            self.multipartUploadId = nil
            self.partSizeInBytes = 0
            self.parts = nil
            self.vaultARN = nil
        }
    }
}