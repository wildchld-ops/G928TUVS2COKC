.class public Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;
.super Ljava/lang/Object;
.source "EcholocateDetailedCallStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStateType"
.end annotation


# direct methods
.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;->toString(I)Ljava/lang/String;

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
    const-string v0, "ConnectionStateType"

    goto :goto_0

    :pswitch_1
    const-string v0, "TelephonyStateType"

    goto :goto_0

    :pswitch_2
    const-string v0, "TelecomStateType"

    goto :goto_0

    :pswitch_3
    const-string v0, "MuteStateType"

    goto :goto_0

    :pswitch_4
    const-string v0, "CSFBHandoverType"

    goto :goto_0

    :pswitch_5
    const-string v0, "SRVCCHandoverType"

    goto :goto_0

    :pswitch_6
    const-string v0, "ASRVCCHandoverType"

    goto :goto_0

    :pswitch_7
    const-string v0, "EPDGHandoverType"

    goto :goto_0

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
    .end packed-switch
.end method
