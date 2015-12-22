.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;
.super Ljava/lang/Object;
.source "EncryptedMethod.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mKeySize:I

.field private mOaepParams:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mKeySize:I

    return v0
.end method

.method public getOaepParams()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mOaepParams:[B

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setKeySize(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mKeySize:I

    return-void
.end method

.method public setOaepParams([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;->mOaepParams:[B

    return-void
.end method
