.class Lcom/android/server/telecom/secutils/AutoAnswer$2;
.super Landroid/os/Handler;
.source "AutoAnswer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/AutoAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/AutoAnswer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/AutoAnswer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoAnswer$2;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x4

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoAnswer$2;->this$0:Lcom/android/server/telecom/secutils/AutoAnswer;

    iput-boolean v3, v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAutoAnswering:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
