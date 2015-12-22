.class Lcom/android/server/telecom/CallsManager$2;
.super Ljava/lang/Object;
.source "CallsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/CallsManager;->onCanceledViaNewOutgoingCallBroadcast(Lcom/android/server/telecom/Call;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/CallsManager;

.field final synthetic val$call:Lcom/android/server/telecom/Call;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/CallsManager$2;->this$0:Lcom/android/server/telecom/CallsManager;

    iput-object p2, p0, Lcom/android/server/telecom/CallsManager$2;->val$call:Lcom/android/server/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager$2;->this$0:Lcom/android/server/telecom/CallsManager;

    # getter for: Lcom/android/server/telecom/CallsManager;->mPendingCallsToDisconnect:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/telecom/CallsManager;->access$100(Lcom/android/server/telecom/CallsManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager$2;->val$call:Lcom/android/server/telecom/Call;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Delayed disconnection of call: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager$2;->val$call:Lcom/android/server/telecom/Call;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager$2;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    :cond_0
    return-void
.end method
