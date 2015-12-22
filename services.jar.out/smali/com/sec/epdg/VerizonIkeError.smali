.class public Lcom/sec/epdg/VerizonIkeError;
.super Lcom/sec/epdg/RfcIkeError;
.source "VerizonIkeError.java"


# static fields
.field public static final MAJOR_NETWORK_FAILURE_MAX:I = 0x2936

.field public static final MINOR_NW_FAILURE_MAX:I = 0x2742

.field public static final NETWORK_FAILURE:I = 0x2904

.field public static final NETWORK_TOO_BUSY:I = 0x2710

.field public static final NO_SUBSCRIPTION:I = 0x2328

.field public static final NW_PERMANENT_FAILURE_MAX:I = 0x2b2a

.field public static final PERMANENT_UE_FAILURE_MAX:I = 0x235a

.field public static final RAT_DISALLOWED:I = 0x2af9

.field public static final ROAMING_NOT_ALLOWED:I = 0x2af8


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/epdg/RfcIkeError;-><init>()V

    return-void
.end method

.method public static getVerizonIkeErrorCode(I)I
    .locals 7

    const/16 v5, 0x235a

    const/16 v3, 0x2af8

    const/16 v2, 0x2904

    const/16 v1, 0x2710

    const/16 v4, 0x2328

    invoke-static {p0}, Lcom/sec/epdg/VerizonIkeError;->getRfcIkeErrorCode(I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sparse-switch p0, :sswitch_data_0

    const/16 v6, 0x2742

    invoke-static {v1, v6, p0}, Lcom/sec/epdg/VerizonIkeError;->isIkeErrorCodeBetween(III)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x2742

    goto :goto_0

    :sswitch_2
    move v0, v2

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x2936

    goto :goto_0

    :sswitch_4
    move v0, v3

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2af9

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x2b2a

    goto :goto_0

    :sswitch_7
    move v0, v4

    goto :goto_0

    :sswitch_8
    move v0, v5

    goto :goto_0

    :cond_1
    const/16 v1, 0x2936

    invoke-static {v2, v1, p0}, Lcom/sec/epdg/VerizonIkeError;->isIkeErrorCodeBetween(III)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v1, 0x2b2a

    invoke-static {v3, v1, p0}, Lcom/sec/epdg/VerizonIkeError;->isIkeErrorCodeBetween(III)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-static {v4, v5, p0}, Lcom/sec/epdg/VerizonIkeError;->isIkeErrorCodeBetween(III)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2328 -> :sswitch_7
        0x235a -> :sswitch_8
        0x2710 -> :sswitch_0
        0x2742 -> :sswitch_1
        0x2904 -> :sswitch_2
        0x2936 -> :sswitch_3
        0x2af8 -> :sswitch_4
        0x2af9 -> :sswitch_5
        0x2b2a -> :sswitch_6
    .end sparse-switch
.end method

.method public static isIkeErrorCodeBetween(III)Z
    .locals 1

    if-lt p2, p0, :cond_0

    if-gt p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static printVerizonIkeErrorCode(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sec/epdg/VerizonIkeError;->printRfcIkeErrorCode(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :sswitch_0
    const-string v0, "NETWORK_TOO_BUSY"

    goto :goto_1

    :sswitch_1
    const-string v0, "MINOR_NW_FAILURE_MAX"

    goto :goto_1

    :sswitch_2
    const-string v0, "NETWORK_FAILURE"

    goto :goto_1

    :sswitch_3
    const-string v0, "MAJOR_NETWORK_FAILURE_MAX"

    goto :goto_1

    :sswitch_4
    const-string v0, "ROAMING_NOT_ALLOWED"

    goto :goto_1

    :sswitch_5
    const-string v0, "RAT_DISALLOWED"

    goto :goto_1

    :sswitch_6
    const-string v0, "NW_PERMANENT_FAILURE_MAX"

    goto :goto_1

    :sswitch_7
    const-string v0, "NO_SUBSCRIPTION"

    goto :goto_1

    :sswitch_8
    const-string v0, "PERMANENT_UE_FAILURE_MAX"

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2328 -> :sswitch_7
        0x235a -> :sswitch_8
        0x2710 -> :sswitch_0
        0x2742 -> :sswitch_1
        0x2904 -> :sswitch_2
        0x2936 -> :sswitch_3
        0x2af8 -> :sswitch_4
        0x2af9 -> :sswitch_5
        0x2b2a -> :sswitch_6
    .end sparse-switch
.end method
