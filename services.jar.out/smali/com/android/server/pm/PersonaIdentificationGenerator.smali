.class public Lcom/android/server/pm/PersonaIdentificationGenerator;
.super Ljava/lang/Object;
.source "PersonaIdentificationGenerator.java"


# static fields
.field private static final KEYSTORE_PATH:Ljava/lang/String; = "/data/idkey"

.field private static final TAG:Ljava/lang/String; = "PersonaIdentificationGenerator"

.field private static final UNIQUE_ID_KEY:Ljava/lang/String; = "uniqueIdKey"

.field private static final VERSION:Ljava/lang/String; = "01"


# instance fields
.field private final mCryptoScheme:Ljava/lang/String;

.field private final mDigest:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "need to provide a valid crypto scheme"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get hash checksum provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaIdentificationGenerator;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "missing key for persona id encryption"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "missing encryption algorithm"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "invalid key"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "illegal block size"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_3
    move-exception v1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "bad padding exception"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_4
    move-exception v1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "missing padding scheme"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey()Ljavax/crypto/SecretKey;
    .locals 18

    const/4 v6, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    new-instance v3, Ljava/io/File;

    const-string v13, "/data/idkey"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v11, v12

    :goto_0
    const/4 v13, 0x0

    invoke-virtual {v10, v6, v13}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    const-string/jumbo v13, "uniqueIdKey"

    invoke-virtual {v10, v13}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PersonaIdentificationGenerator;->mCryptoScheme:Ljava/lang/String;

    invoke-static {v13}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    new-instance v9, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v9, v8}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    const-string/jumbo v13, "uniqueIdKey"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v9, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    :goto_2
    invoke-virtual {v9}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_3
    return-object v13

    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_3

    const-string v13, "PersonaIdentificationGenerator"

    const-string v14, "Creating key file again..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v11, v12

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v7

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_5
    const-string v13, "PersonaIdentificationGenerator"

    const-string/jumbo v14, "io exception when getting key, removing file"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v11, 0x0

    move-object v12, v11

    :goto_4
    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    const/4 v6, 0x0

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "PersonaIdentificationGenerator"

    const-string/jumbo v14, "failed to delete file"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v13, 0x0

    if-eqz v6, :cond_5

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :goto_5
    move-object v11, v12

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    :try_start_8
    new-instance v11, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v11, v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_9
    invoke-virtual {v10, v13, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v2

    :goto_6
    :try_start_a
    const-string v13, "PersonaIdentificationGenerator"

    const-string/jumbo v14, "failed to get secret key"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v6, :cond_8

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_8
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_9
    :goto_7
    const/4 v13, 0x0

    goto :goto_3

    :cond_a
    :try_start_c
    const-string/jumbo v13, "uniqueIdKey"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v9

    check-cast v9, Ljava/security/KeyStore$SecretKeyEntry;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v2

    const-string v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_4
    move-exception v2

    const-string v13, "PersonaIdentificationGenerator"

    const-string/jumbo v14, "failed to close IO"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_0
    move-exception v13

    :goto_8
    if-eqz v6, :cond_b

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_c
    :goto_9
    throw v13

    :catch_5
    move-exception v2

    const-string v14, "PersonaIdentificationGenerator"

    const-string/jumbo v15, "failed to close IO"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_1
    move-exception v13

    move-object v11, v12

    goto :goto_8

    :catch_6
    move-exception v2

    move-object v11, v12

    goto :goto_6

    :cond_d
    move-object v12, v11

    goto/16 :goto_4
.end method


# virtual methods
.method getId()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "01"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaIdentificationGenerator;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
