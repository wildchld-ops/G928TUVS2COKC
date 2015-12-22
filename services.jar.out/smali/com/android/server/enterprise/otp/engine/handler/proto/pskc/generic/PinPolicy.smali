.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;
.super Ljava/lang/Object;
.source "PinPolicy.java"


# instance fields
.field private mMaxFailedAttempts:I

.field private mMaxLength:I

.field private mMinLength:I

.field private mPinEncoding:Ljava/lang/String;

.field private mPinKeyId:Ljava/lang/String;

.field private mPinUsageMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxFailedAttempts()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mMaxFailedAttempts:I

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mMaxLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mMinLength:I

    return v0
.end method

.method public getPinEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mPinEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getPinKeyID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mPinKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPinUsageMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mPinUsageMode:Ljava/lang/String;

    return-object v0
.end method

.method public setMaxFailedAttempts(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mMaxFailedAttempts:I

    :cond_0
    return-void
.end method

.method public setMaxLength(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mMaxLength:I

    :cond_0
    return-void
.end method

.method public setMinLength(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mMinLength:I

    :cond_0
    return-void
.end method

.method public setPinEncoding(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mPinEncoding:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPinKeyID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mPinKeyId:Ljava/lang/String;

    return-void
.end method

.method public setPinUsageMode(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->mPinUsageMode:Ljava/lang/String;

    :cond_0
    return-void
.end method
