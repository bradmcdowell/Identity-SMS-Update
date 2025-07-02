# 📱 Identity-SMS-Update

A simple PowerShell script that updates the mobile (cell) number for lab users in CyberArk Identity. This allows SMS authentication to be redirected to your own phone for testing purposes.

## 🔧 What It Does

This script sets your provided mobile number for all lab users so that when you log in as one of them, SMS-based MFA will send a code to your number instead of a pre-configured one.

## ▶️ How to Use

1. Open PowerShell and run the script:

    ```powershell
    .\Identity-sms-update.ps1
    ```

2. When prompted, enter your mobile number in **international format**, e.g.:

    ```
    +61411111111
    ```

3. Once complete, you can log into CyberArk Identity using any of the following lab accounts:

    - **mike**
    - **carlos**
    - **cindy**
    - **tom**
    - **john**
    - **paul**

    The SMS authentication code will now be sent to your number.

## 🧪 Example Use Case

This is useful for testing SMS-based multi-factor authentication (MFA) in a lab or demo environment, without needing multiple devices or SIMs.

## ⚠️ Notes

- This script is intended for **lab environments only**. Do not use it in production.
- Ensure your account has permission to update user profiles in CyberArk Identity.

## 🛠️ Requirements

- PowerShell 5.1 or later
- CyberArk Identity API access with sufficient permissions
