// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListMultipartUploadsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListMultipartUploadsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.bucket = output.bucket
            self.commonPrefixes = output.commonPrefixes
            self.delimiter = output.delimiter
            self.encodingType = output.encodingType
            self.isTruncated = output.isTruncated
            self.keyMarker = output.keyMarker
            self.maxUploads = output.maxUploads
            self.nextKeyMarker = output.nextKeyMarker
            self.nextUploadIdMarker = output.nextUploadIdMarker
            self.prefix = output.prefix
            self.uploadIdMarker = output.uploadIdMarker
            self.uploads = output.uploads
        } else {
            self.bucket = nil
            self.commonPrefixes = nil
            self.delimiter = nil
            self.encodingType = nil
            self.isTruncated = false
            self.keyMarker = nil
            self.maxUploads = 0
            self.nextKeyMarker = nil
            self.nextUploadIdMarker = nil
            self.prefix = nil
            self.uploadIdMarker = nil
            self.uploads = nil
        }
    }
}