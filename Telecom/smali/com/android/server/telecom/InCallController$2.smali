.class Lcom/android/server/telecom/InCallController$2;
.super Landroid/os/Handler;
.source "InCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/InCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/InCallController;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/InCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->unregisterForServiceStateChanged()V
    invoke-static {v0}, Lcom/android/server/telecom/InCallController;->access$400(Lcom/android/server/telecom/InCallController;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    # getter for: Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;
    invoke-static {v0}, Lcom/android/server/telecom/InCallController;->access$500(Lcom/android/server/telecom/InCallController;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallController;->bind()V

    goto :goto_0

    :cond_1
    const-string v0, "Delayed Emergency Call Added: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    # getter for: Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;
    invoke-static {v3}, Lcom/android/server/telecom/InCallController;->access$500(Lcom/android/server/telecom/InCallController;)Lcom/android/server/telecom/Call;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    iget-object v1, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    # getter for: Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;
    invoke-static {v1}, Lcom/android/server/telecom/InCallController;->access$500(Lcom/android/server/telecom/InCallController;)Lcom/android/server/telecom/Call;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/InCallController;->addCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/InCallController;->access$600(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    # getter for: Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/telecom/InCallController;->access$700(Lcom/android/server/telecom/InCallController;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    iget-object v3, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    iget-object v4, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    # getter for: Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;
    invoke-static {v4}, Lcom/android/server/telecom/InCallController;->access$500(Lcom/android/server/telecom/InCallController;)Lcom/android/server/telecom/Call;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    # getter for: Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/android/server/telecom/InCallController;->access$800(Lcom/android/server/telecom/InCallController;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    # invokes: Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;
    invoke-static {v3, v4, v1}, Lcom/android/server/telecom/InCallController;->access$900(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v1

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IInCallService;->addCall(Landroid/telecom/ParcelableCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    const-string v0, "keep_incallui_bind_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController$2;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->bindExceptWithSecInCallUI()V
    invoke-static {v0}, Lcom/android/server/telecom/InCallController;->access$1000(Lcom/android/server/telecom/InCallController;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
