// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateSnapshotFromVolumeRecoveryPointOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateSnapshotFromVolumeRecoveryPointOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.snapshotId = output.snapshotId
            self.volumeARN = output.volumeARN
            self.volumeRecoveryPointTime = output.volumeRecoveryPointTime
        } else {
            self.snapshotId = nil
            self.volumeARN = nil
            self.volumeRecoveryPointTime = nil
        }
    }
}