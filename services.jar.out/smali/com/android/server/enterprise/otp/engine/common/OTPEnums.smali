.class public Lcom/android/server/enterprise/otp/engine/common/OTPEnums;
.super Ljava/lang/Object;
.source "OTPEnums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$1;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final keyUsageToStr(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$1;->$SwitchMap$com$android$server$enterprise$otp$engine$common$OTPEnums$KeyUsage:[I

    invoke-virtual {p0}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "OTP"

    goto :goto_0

    :pswitch_1
    const-string v0, "CR"

    goto :goto_0

    :pswitch_2
    const-string v0, "Encrypt"

    goto :goto_0

    :pswitch_3
    const-string v0, "Integrity"

    goto :goto_0

    :pswitch_4
    const-string v0, "Verify"

    goto :goto_0

    :pswitch_5
    const-string v0, "Unlock"

    goto :goto_0

    :pswitch_6
    const-string v0, "Decrypt"

    goto :goto_0

    :pswitch_7
    const-string v0, "KeyWrap"

    goto :goto_0

    :pswitch_8
    const-string v0, "Unwrap"

    goto :goto_0

    :pswitch_9
    const-string v0, "Derive"

    goto :goto_0

    :pswitch_a
    const-string v0, "Generate"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static strToKeyUsage(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    .locals 1

    const-string v0, "OTP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "CR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_1
    const-string v0, "Encrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_2
    const-string v0, "Integrity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_3
    const-string v0, "Verify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_4
    const-string v0, "Unlock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_5
    const-string v0, "Decrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_6
    const-string v0, "KeyWrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_7
    const-string v0, "Unwrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_8
    const-string v0, "Derive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_9
    const-string v0, "Generate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0
.end method
