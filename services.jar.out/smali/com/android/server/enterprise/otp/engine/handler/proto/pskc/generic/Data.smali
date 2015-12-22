.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private mCounter:I

.field private mEncryptionAlgo:Ljava/lang/String;

.field private mEncryptionType:I

.field private mSecret:Ljava/lang/String;

.field private mTime:I

.field private mTimeDrift:I

.field private mTimeInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCounter()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mCounter:I

    return v0
.end method

.method public getEncryptionAlgo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionType()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionType:I

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTime:I

    return v0
.end method

.method public getTimeDrift()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTimeDrift:I

    return v0
.end method

.method public getTimeInterval()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTimeInterval:I

    return v0
.end method

.method public setCounter(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mCounter:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setEncryptionType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionType:I

    return-void
.end method

.method public setSecret(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mSecret:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionType:I

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->getCipherValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mSecret:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mEncryptionAlgo:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTime(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTime:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setTimeDrift(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTimeDrift:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setTimeInterval(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getPlainValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->mTimeInterval:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
