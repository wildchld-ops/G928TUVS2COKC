.class public Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;
.super Ljava/lang/Object;
.source "EcholocateDetailedCallStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$DisconnectCause;,
        Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallState;,
        Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;
    }
.end annotation


# static fields
.field private static prevCallState:I

.field private static prevMuteState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->prevMuteState:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->prevCallState:I

    return-void
.end method

.method private static getEchCallStateFromConnection(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getEchCallStateFromTelecomCallState(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static resetPrevMuteState()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "EcholocateDetailedCallStateMgr"

    const-string v1, "resetPrevMuteState..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    sput v0, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->prevMuteState:I

    sput v3, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->prevCallState:I

    return-void
.end method

.method private static sendDetailedCallState(ILjava/lang/String;II)V
    .locals 4

    if-eqz p2, :cond_0

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallState;->toString(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallState;->access$000(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EcholocateDetailedCallStateMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;->toString(I)Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;->access$100(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$DisconnectCause;->toString(I)Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$DisconnectCause;->access$200(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getInstance()Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$DisconnectCause;->toString(I)Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$DisconnectCause;->access$200(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sendDetailedCallState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setEcholocateCallState(ILandroid/net/Uri;II)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const-string v2, "EcholocateDetailedCallStateMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEcholocateCallState CallStateType error... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;->toString(I)Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;->access$100(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p2, v0

    :goto_1
    :pswitch_0
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    if-eqz p2, :cond_0

    sput p2, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->prevCallState:I

    :cond_0
    invoke-static {p0, v1, p2, p3}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->sendDetailedCallState(ILjava/lang/String;II)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->getEchCallStateFromConnection(I)I

    move-result p2

    goto :goto_1

    :pswitch_2
    invoke-static {p2}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->getEchCallStateFromTelecomCallState(I)I

    move-result p2

    goto :goto_1

    :pswitch_3
    sget v2, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->prevMuteState:I

    if-ne v2, p2, :cond_2

    const-string v1, "EcholocateDetailedCallStateMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It\'s already "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallState;->toString(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallState;->access$000(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    sput p2, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->prevMuteState:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setEcholocateHandoverState(II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "EcholocateDetailedCallStateMgr"

    const-string v2, "There is no call..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-ne p0, v2, :cond_1

    sget v2, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->prevCallState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 p0, 0x7

    :cond_1
    packed-switch p0, :pswitch_data_0

    const-string v2, "EcholocateDetailedCallStateMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEcholocateHandoverState CallStateType error... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;->toString(I)Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;->access$100(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    :pswitch_0
    const/4 v2, -0x1

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->sendDetailedCallState(ILjava/lang/String;II)V

    goto :goto_0

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    const-string v2, "EcholocateDetailedCallStateMgr"

    const-string v3, "SRVCCHandoverState error..."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xe

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xf

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x10

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x18

    goto :goto_1

    :pswitch_6
    packed-switch p1, :pswitch_data_2

    const-string v2, "EcholocateDetailedCallStateMgr"

    const-string v3, "ASRVCCHandoverState error..."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x11

    goto :goto_1

    :pswitch_8
    const/16 v0, 0x12

    goto :goto_1

    :pswitch_9
    const/16 v0, 0x13

    goto :goto_1

    :pswitch_a
    const/16 v0, 0x19

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static setEcholocateHandoverState(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "EcholocateDetailedCallStateMgr"

    const-string v2, "There is no call..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    packed-switch p0, :pswitch_data_0

    const-string v2, "EcholocateDetailedCallStateMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEcholocateHandoverState CallStateType error... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;->toString(I)Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr$CallStateType;->access$100(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v2, -0x1

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->sendDetailedCallState(ILjava/lang/String;II)V

    goto :goto_0

    :pswitch_0
    const-string v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x14

    goto :goto_1

    :cond_1
    const-string v2, "success"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x15

    goto :goto_1

    :cond_2
    const-string v2, "fail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x16

    goto :goto_1

    :cond_3
    const-string v2, "EcholocateDetailedCallStateMgr"

    const-string v3, "EPDGHandoverState error..."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
