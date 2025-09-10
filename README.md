# Use GPG on Termux

## Privacy “on the go”
Termux turns your Android smartphone into a true Linux console. With GnuPG (gnupg package, included by default), you can generate, manage, and use cryptographic keys directly from the device, without having to use a PC. This allows you to:.
•	Encrypt attachments before sending, so even if the email is intercepted, the content remains unreadable.
•	Sign the message, guaranteeing the recipient the sender's authenticity and the integrity of the content.
•	Keep everything offline : Private keys remain on the phone, protected by a passphrase and Android's file system encryption.
## Features
- Bash script (`obfuscate.sh`) using GPG
- Works completely offline, no paid apps required
## Prerequisites (Termux)
Before installing the project, make sure you have **Termux** installed on your Android device. You can download it from the [Google Play Store](https://play.google.com/store/apps/details?id=com.termux) , but since 2020 it has not been updated or from [Termux GitHub](https://github.com/termux/termux-app).
## Universal compatibility
The OpenPGP format is supported by all major email clients (ProtonMail, Thunderbird, Outlook, Gmail via plugins, etc.). A file encrypted with gpg can be opened by anyone with the corresponding public key, regardless of the operating system.
The decryption key must obviously be communicated separately, in an equally cryptic manner, perhaps verbally, 
e.g.1, say your great-grandmother's name + birth year, with a capital first letter, and as passphrase: Maria1890 
or even better a sentence like the verse after :The slings and arrows of outrageous fortune, Act III, Scene I (who speaks?):
e.g.2: Or to take arms against a sea of troubles
## Additional security over simple TLS
TLS protects the transmission channel, but not the message once it reaches the recipient's mail server. Encrypting the attachment with GPG:
•	Only the recipient (who has the private key) can decrypt the file.
•	The email provider does not have access to the content, even if it suffers a breach.
## Conclusion
With GPG on Termux, security is no longer just for laptops. Take your encryption anywhere, protect sensitive data, and show the world that privacy is a right, not a luxury..
## Installation on Termux

1. **Install Termux** from the Play Store or F-Droid (if you haven't done it yet).
2. **Update Termux packages**:

    ```bash
    pkg update && pkg upgrade
    ```
4. **Let Termux read and write on your folder**:


    ```bash
    termux-setup-storage
    cd  /storage/emulated/0/Download/

4. **Clone the project repository**:

    ```bash
    git clone https://github.com/chiostro/obfuscate-file-gpg.git
    cd  obfuscate-file-gpg
    ```
4. **Run the project**:

   
To test script obfuscat.sh as a DEMO,  run script passing parameters [file_to_obfuscate Passphrase] 
    
     sh obfuscate.sh AllSIGNED-non-belligerence_pact.pdf  Tanto gentile e tanto onesta pare

You will get a new file called AllSIGNED-non-belligerence_pact.pdf.gpg and the original will be deleted for ever. From now only you know the secret inside   the file gpg. Send it as attachment and receiver can decrypt it using gpg  AllSIGNED-non-belligerence_pact.pdf.gpg 
And a beautiful simple interface will ask receiver to write the passphrase, which must be the same with blank spaces : Tanto gentile e tanto onesta pare

## Commands  for who wants to try directly
1)	Open Termux App
With cd (change directory) command go under you dir for example  /storage/emulated/0/Download:
Run :

    ```bash
    cd /storage/emulated/0/Download
    gpg -c new.png # encrypt the file with a new symmetric password that you choose creating new.png.gpg
    ```
   
who receives your attachment :

 ```bash
    cd /storage/emulated/0/Download
    gpg new.png.gpg # decripta il file 
    ```
   
 ## License
This project is licensed under the MIT License - see the [LICENSE file](LICENSE) for details.




