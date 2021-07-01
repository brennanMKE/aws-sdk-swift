// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ImportKeyMaterialInput: Equatable {
    /// <p>The encrypted key material to import. The key material must be encrypted with the public
    ///       wrapping key that <a>GetParametersForImport</a> returned, using the wrapping
    ///       algorithm that you specified in the same <code>GetParametersForImport</code> request.</p>
    public let encryptedKeyMaterial: Data?
    /// <p>Specifies whether the key material expires. The default is
    ///         <code>KEY_MATERIAL_EXPIRES</code>, in which case you must include the <code>ValidTo</code>
    ///       parameter. When this parameter is set to <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>, you must
    ///       omit the <code>ValidTo</code> parameter.</p>
    public let expirationModel: ExpirationModelType?
    /// <p>The import token that you received in the response to a previous <a>GetParametersForImport</a> request. It must be from the same response that contained
    ///       the public key that you used to encrypt the key material.</p>
    public let importToken: Data?
    /// <p>The identifier of the symmetric CMK that receives the imported key material. The CMK's
    ///         <code>Origin</code> must be <code>EXTERNAL</code>. This must be the same CMK specified in
    ///       the <code>KeyID</code> parameter of the corresponding <a>GetParametersForImport</a>
    ///       request.</p>
    ///          <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
    ///          <p>For example:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    ///          <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    public let keyId: String?
    /// <p>The time at which the imported key material expires. When the key material expires, AWS KMS
    ///       deletes the key material and the CMK becomes unusable. You must omit this parameter when the
    ///         <code>ExpirationModel</code> parameter is set to <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>.
    ///       Otherwise it is required.</p>
    public let validTo: Date?

    public init (
        encryptedKeyMaterial: Data? = nil,
        expirationModel: ExpirationModelType? = nil,
        importToken: Data? = nil,
        keyId: String? = nil,
        validTo: Date? = nil
    )
    {
        self.encryptedKeyMaterial = encryptedKeyMaterial
        self.expirationModel = expirationModel
        self.importToken = importToken
        self.keyId = keyId
        self.validTo = validTo
    }
}

extension ImportKeyMaterialInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ImportKeyMaterialInput(encryptedKeyMaterial: \(String(describing: encryptedKeyMaterial)), expirationModel: \(String(describing: expirationModel)), importToken: \(String(describing: importToken)), keyId: \(String(describing: keyId)), validTo: \(String(describing: validTo)))"}
}