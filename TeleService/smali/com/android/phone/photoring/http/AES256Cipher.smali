.class public Lcom/android/phone/photoring/http/AES256Cipher;
.super Ljava/lang/Object;
.source "AES256Cipher.java"


# static fields
.field private static final ivSpec:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/photoring/http/AES256Cipher;->ivSpec:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/photoring/http/Base64;->decode([B)[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "12345678901234561234567890123456"

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v4, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v7, Lcom/android/phone/photoring/http/AES256Cipher;->ivSpec:[B

    invoke-direct {v3, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v7, "AES/CBC/PKCS5Padding"

    const-string v8, "BC"

    invoke-static {v7, v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v7, "AES256Cipher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decrypt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    throw v1
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "12345678901234561234567890123456"

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v3, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/android/phone/photoring/http/AES256Cipher;->ivSpec:[B

    invoke-direct {v2, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v6, "AES/CBC/PKCS5Padding"

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/photoring/http/Base64;->encode([B)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "AES256Cipher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encrypt : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    throw v1
.end method
