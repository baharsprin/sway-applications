library;

use std::b512::B512;

pub enum MessageFormat {
    None: (),
    EIP191PersonalSign: (),
}

pub enum MessagePrefix {
    None: (),
    Ethereum: (),
}

pub enum WalletType {
    Fuel: (),
    EVM: (),
}

pub struct SignatureInfo {
    /// The type of formatting of the message that was signed.
    message_format: MessageFormat,
    /// The type of prefix prepended to the message that was signed.
    message_prefix: MessagePrefix,
    /// The signature generated by signing over a message hash with the format and prefix specified in the `format` and `prefix` fields.
    signature: B512,
    /// The wallet type of the signer of the message.
    wallet_type: WalletType,
}
