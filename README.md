# zelle-qr-creator
PowerShell script to generate a QR code for Zelle payments.

[![Download exe](https://custom-icon-badges.herokuapp.com/badge/-Download-blue?style=for-the-badge&logo=download&logoColor=white "Download exe")](https://github.com/bailsafe/zelle-qr-creator/releases/latest/download/zelle-qr-creator.exe)

## Usage
Run the `zelle.ps1` script by right-clicking > Run with PowerShell or by running `.\zelle.ps1` in PowerShell.

Alternatively, click the blue button to download the latest executable file.

* **Name:** The name of the recipient in the QR code doesn' treally seem to matter much if the user is already registered, as it will pull the registered name automatically upon scanning.
* **Token:** The Zelle token is the registered phone number or email address for the recipient.

After you confirm that the URL looks okay, the script will generate an SVG-formatted QR code with a [quiet zone](https://www.qrcode.com/en/howto/code.html) of 4 and open it in the default web browser.
