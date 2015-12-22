.class Lcom/android/server/telecom/operator/jpn/NextiCallSMSService$1;
.super Lcom/android/server/telecom/Call$ListenerBase;
.source "NextiCallSMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService$1;->this$0:Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;

    invoke-direct {p0}, Lcom/android/server/telecom/Call$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallerInfoChanged(Lcom/android/server/telecom/Call;)V
    .locals 3

    # getter for: Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/operator/jpn/NextiCallSMSService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCallerInfoChanged()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    return-void
.end method
