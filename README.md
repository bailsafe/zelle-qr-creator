# zelle-qr-creator
PowerShell script to generate a QR code for Zelle payments.

## Usage
Run the `zelle.ps1` script by right-clicking > Run with PowerShell or by running `.\zelle.ps1` in PowerShell.

* **Name:** The name of the recipient in the QR code doesn' treally seem to matter much if the user is already registered, as it will pull the registered name automatically upon scanning.
* **Token:** The Zelle token is the registered phone number or email address for the recipient.

After you confirm that the URL looks okay, the script will generate an SVG-formatted QR code with a [quiet zone](https://www.qrcode.com/en/howto/code.html) of 4 and open it in the default web browser.
