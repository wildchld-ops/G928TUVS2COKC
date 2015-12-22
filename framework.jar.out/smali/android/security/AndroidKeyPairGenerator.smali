.class public Landroid/security/AndroidKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyPairGenerator.java"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mSpec:Landroid/security/KeyPairGeneratorSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    return-void
.end method

.method private static getArgsForKeyType(ILjava/security/spec/AlgorithmParameterSpec;)[[B
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_0

    :cond_0
    const/4 v2, 0x0

    check-cast v2, [[B

    :goto_0
    return-object v2

    :sswitch_0
    instance-of v2, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    new-array v2, v5, [[B

    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    :sswitch_1
    instance-of v2, p1, Ljava/security/spec/DSAParameterSpec;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    const/4 v2, 0x3

    new-array v2, v2, [[B

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x74 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getDefaultSignatureAlgorithmForKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sha256WithRSA"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sha1WithDSA"

    goto :goto_0

    :cond_1
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sha256WithECDSA"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 25

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    if-nez v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Key generation failed."

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Must call initialize with an android.security.KeyPairGeneratorSpec first"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v4, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v2, v4, :cond_4

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Key generation failed."

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Android keystore must be in initialized and unlocked state if encryption is required"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v15}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/KeyStore;->getKeyTypeForAlgorithm(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/security/AndroidKeyPairGenerator;->getArgsForKeyType(ILjava/security/spec/AlgorithmParameterSpec;)[[B

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v7}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v7

    invoke-virtual/range {v2 .. v8}, Landroid/security/KeyStore;->generate(Ljava/lang/String;IIII[[B)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Key generation failed."

    invoke-static/range {v9 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "could not generate key in keystore"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string/jumbo v2, "keystore"

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v20

    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->getPubkey(Ljava/lang/String;)[B

    move-result-object v24

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v21

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v23

    new-instance v18, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct/range {v18 .. v18}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/AndroidKeyPairGenerator;->getDefaultSignatureAlgorithmForKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v16

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v7}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v7

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v15}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t store certificate in AndroidKeyStore"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v19

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Key generation failed."

    invoke-static/range {v9 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t get key"

    move-object/from16 v0, v19

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v19

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Key generation failed."

    invoke-static/range {v9 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t instantiate key generator"

    move-object/from16 v0, v19

    invoke-direct {v2, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v19

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Key generation failed."

    invoke-static/range {v9 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "keystore returned invalid key encoding"

    move-object/from16 v0, v19

    invoke-direct {v2, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v15}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t generate certificate"

    move-object/from16 v0, v19

    invoke-direct {v2, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v15}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t get encoding of certificate"

    move-object/from16 v0, v19

    invoke-direct {v2, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    new-instance v2, Ljava/security/KeyPair;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v2, v0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot specify keysize with AndroidKeyPairGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "must supply params of type android.security.KeyPairGeneratorSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p1, Landroid/security/KeyPairGeneratorSpec;

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "params must be of type android.security.KeyPairGeneratorSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/security/KeyPairGeneratorSpec;

    iput-object v0, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method
