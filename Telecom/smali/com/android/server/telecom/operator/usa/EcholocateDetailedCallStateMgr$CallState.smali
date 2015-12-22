.class Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallState;
.super Ljava/lang/Object;
.source "EcholocateDetailedCallStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallState"
.end annotation


# direct methods
.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "NA"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "ATTEMPTING"

    goto :goto_0

    :pswitch_2
    const-string v0, "ESTABLISHED"

    goto :goto_0

    :pswitch_3
    const-string v0, "CONNECTED"

    goto :goto_0

    :pswitch_4
    const-string v0, "DISCONNECTING"

    goto :goto_0

    :pswitch_5
    const-string v0, "FAILED"

    goto :goto_0

    :pswitch_6
    const-string v0, "HELD"

    goto :goto_0

    :pswitch_7
    const-string v0, "ENDED"

    goto :goto_0

    :pswitch_8
    const-string v0, "INCOMING"

    goto :goto_0

    :pswitch_9
    const-string v0, "MUTED"

    goto :goto_0

    :pswitch_a
    const-string v0, "UNMUTED"

    goto :goto_0

    :pswitch_b
    const-string v0, "CSFB_STARTED"

    goto :goto_0

    :pswitch_c
    const-string v0, "CSFB_SUCCESSFUL"

    goto :goto_0

    :pswitch_d
    const-string v0, "CSFB_FAILED"

    goto :goto_0

    :pswitch_e
    const-string v0, "SRVCC_STARTED"

    goto :goto_0

    :pswitch_f
    const-string v0, "SRVCC_SUCCESSFUL"

    goto :goto_0

    :pswitch_10
    const-string v0, "SRVCC_FAILED"

    goto :goto_0

    :pswitch_11
    const-string v0, "ASRVCC_STARTED"

    goto :goto_0

    :pswitch_12
    const-string v0, "ASRVCC_SUCCESSFUL"

    goto :goto_0

    :pswitch_13
    const-string v0, "ASRVCC_FAILED"

    goto :goto_0

    :pswitch_14
    const-string v0, "EPDG_HO_STARTED"

    goto :goto_0

    :pswitch_15
    const-string v0, "EPDG_HO_SUCCESSFUL"

    goto :goto_0

    :pswitch_16
    const-string v0, "EPDG_HO_FAILED"

    goto :goto_0

    :pswitch_17
    const-string v0, "CSFB_CANCELED"

    goto :goto_0

    :pswitch_18
    const-string v0, "SRVCC_CANCELED"

    goto :goto_0

    :pswitch_19
    const-string v0, "ASRVCC_CANCELED"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
