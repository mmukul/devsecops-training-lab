### **Java Code Signing Tool**

`jarsigner` is a **Java utility** used to sign and verify Java Archive (**JAR**) files. It ensures the authenticity and integrity of JAR files in Java applications.

## **Why Use jarsigner?**

✅ Ensures **code authenticity** by verifying the developer's identity.  
✅ Protects against **tampering and supply chain attacks**.  
✅ Required for **signing Java applications, plugins, and applets**.  
✅ Helps meet security **compliance standards**.

## **Prerequisites**

🔹 **Java Development Kit (JDK)** installed (includes `keytool` & `jarsigner`).  
🔹 A **code signing certificate** (from a Certificate Authority or self-signed).  
🔹 **Java Keystore (JKS)** containing the private key & certificate.

## **Generate a Keystore & Key Pair**

```sh
keytool -genkeypair -keystore mykeystore.jks -alias myalias -keyalg RSA -keysize 2048 -validity 3650

```

📌 **Options Explained:**

-   `-genkeypair` → Generates a key pair
-   `-keystore mykeystore.jks` → Stores the key pair in `mykeystore.jks`
-   `-alias myalias` → Name for the key
-   `-keyalg RSA` → Uses **RSA** for key generation
-   `-keysize 2048` → Uses **2048-bit encryption**
-   `-validity 3650` → Valid for **10 years**

## **Sign a JAR File with jarsigner**

```sh
jarsigner -keystore mykeystore.jks -signedjar myapp-signed.jar myapp.jar myalias

```

📌 **Explanation:**

-   `-keystore mykeystore.jks` → Uses the keystore.
-   `-signedjar myapp-signed.jar` → Generates a signed JAR.
-   `myapp.jar` → The original JAR file to sign.
-   `myalias` → Alias of the private key.

🔹 **Sign with a Timestamp (Recommended)**

```sh
jarsigner -tsa http://timestamp.digicert.com -keystore mykeystore.jks -signedjar myapp-signed.jar myapp.jar myalias

```

📌 **Why Timestamping?**  
✔ Prevents the signature from expiring when the certificate expires
✔ Validates the signing time with a trusted **Timestamp Authority (TSA)**

## **Verify a Signed JAR**

```sh
jarsigner -verify -verbose -certs myapp-signed.jar

```

📌 **Key Checks:**  
✔ **jar verified.** → The JAR is signed and valid
✔ **No warnings/errors.** → Signature integrity is maintained

## **Best Practices**

✔ Always **timestamp** signatures (`-tsa` option)
✔ Use **strong cryptographic algorithms** (e.g., RSA 2048-bit, SHA-256)
✔ Regularly **rotate signing keys**
✔ Store keystores **securely** (HSM, AWS KMS, Azure Key Vault)