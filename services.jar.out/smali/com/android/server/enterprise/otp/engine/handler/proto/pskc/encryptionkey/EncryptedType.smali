.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;
.super Ljava/lang/Object;
.source "EncryptedType.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mCipherData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

.field private mEncoding:Ljava/lang/String;

.field private mEncryptedMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;

.field private mEncryptionProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptionProperty;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mCipherData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mEncryptedMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;

    return-object v0
.end method

.method public getEncryptionProperties()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptionProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mEncryptionProperties:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setCipherData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mCipherData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public setEncryptedMethod(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mEncryptedMethod:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedMethod;

    return-void
.end method

.method public setEncryptionProperties(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptionProperty;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mEncryptionProperties:Ljava/util/ArrayList;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mId:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->mType:Ljava/lang/String;

    return-void
.end method
