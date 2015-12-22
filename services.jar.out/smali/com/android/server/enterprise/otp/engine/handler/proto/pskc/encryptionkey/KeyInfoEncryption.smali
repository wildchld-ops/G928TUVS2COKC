.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;
.super Ljava/lang/Object;
.source "KeyInfoEncryption.java"


# instance fields
.field private encryptionKeyType:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptionKeyType()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->encryptionKeyType:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-object v0
.end method

.method public setEncryptionKeyType(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->encryptionKeyType:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-void
.end method
