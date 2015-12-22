.class Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$DisconnectCause;
.super Ljava/lang/Object;
.source "EcholocateDetailedCallStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisconnectCause"
.end annotation


# direct methods
.method static synthetic access$200(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NA"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
