// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateStorediSCSIVolumeOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateStorediSCSIVolumeOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.targetARN = output.targetARN
            self.volumeARN = output.volumeARN
            self.volumeSizeInBytes = output.volumeSizeInBytes
        } else {
            self.targetARN = nil
            self.volumeARN = nil
            self.volumeSizeInBytes = 0
        }
    }
}