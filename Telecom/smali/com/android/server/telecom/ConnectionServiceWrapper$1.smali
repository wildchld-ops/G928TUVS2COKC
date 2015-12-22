.class Lcom/android/server/telecom/ConnectionServiceWrapper$1;
.super Landroid/os/Handler;
.source "ConnectionServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ConnectionServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/ConnectionRequest;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableConnection;

    iget-object v4, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # invokes: Lcom/android/server/telecom/ConnectionServiceWrapper;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$000(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->markCallAsActive(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->markCallAsRinging(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->markCallAsDialing(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/DisconnectCause;

    const-string v3, "disconnect call %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    const-string v3, "feature_chn"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x27

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/server/telecom/CallsManager;->markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallsManager;->markCallAsRemoved(Lcom/android/server/telecom/Call;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/server/telecom/CallsManager;->markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/server/telecom/CallsManager;->markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->markCallAsOnHold(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_4

    move v0, v4

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/server/telecom/Call;->setRingbackRequested(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->setConnectionCapabilities(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_4
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    const-string v1, "SET_IS_CONFERENCE: %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-static {p0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_5

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "unsetting parent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-static {p0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->setParentCall(Lcom/android/server/telecom/Call;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->setParentCall(Lcom/android/server/telecom/Call;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_6
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "Attempting to add a conference call using an existing call id %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_7
    :try_start_7
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/ParcelableConference;

    invoke-virtual {v2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v3

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v8}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v3

    if-eqz v3, :cond_1a

    move v3, v4

    :goto_5
    move v5, v3

    goto :goto_4

    :cond_8
    if-nez v5, :cond_9

    invoke-virtual {v2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    const-string v1, "Attempting to add a conference with no valid calls"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_19

    :try_start_8
    invoke-virtual {v2}, Landroid/telecom/ParcelableConference;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Landroid/telecom/ParcelableConference;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    :goto_6
    iget-object v4, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v4}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/server/telecom/CallsManager;->createConferenceCall(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ParcelableConference;)Lcom/android/server/telecom/Call;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v5}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/android/server/telecom/CallIdMapper;->addCall(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v4, v5}, Lcom/android/server/telecom/Call;->setConnectionService(Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    const-string v5, "adding children to conference %s phAcc %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {p0, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v5}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v5

    const-string v6, "found child: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {p0, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeConferenceSecCallExtra(Ljava/lang/String;Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v5, v4}, Lcom/android/server/telecom/Call;->setParentCall(Lcom/android/server/telecom/Call;)V

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_REMOVE_CALL, call.getExtras() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getPhoneTypeChanged()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_REMOVE_CALL, phoneTypeChanged : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / call : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v1, :cond_c

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "MSG_REMOVE_CALL, createConnection"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->setConnectionCapabilities(I)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    new-instance v2, Lcom/android/server/telecom/ConnectionServiceWrapper$BlankResponse;

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-direct {v2, v3, v6}, Lcom/android/server/telecom/ConnectionServiceWrapper$BlankResponse;-><init>(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->createConnection(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/CreateConnectionResponse;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/CallsManager;->markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->markCallAsRemoved(Lcom/android/server/telecom/Call;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_9
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->onPostDialWait(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_a
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_f

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/Call;->onPostDialChar(C)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_d
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/RemoteServiceCallback;

    # invokes: Lcom/android/server/telecom/ConnectionServiceWrapper;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    invoke-static {v1, v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/internal/telecom/RemoteServiceCallback;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_b
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v2, :cond_10

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->setVideoProvider(Lcom/android/internal/telecom/IVideoProvider;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_11

    :goto_8
    invoke-virtual {v0, v4}, Lcom/android/server/telecom/Call;->setIsVoipAudioMode(Z)V

    goto/16 :goto_0

    :cond_11
    move v4, v3

    goto :goto_8

    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_c
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/StatusHints;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->setStatusHints(Landroid/telecom/StatusHints;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_7
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_d
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :cond_13
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_8
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_e
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/telecom/Call;->setCallerDisplayName(Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :cond_14
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_9
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_f
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v5}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_15

    if-eq v1, v2, :cond_15

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_9

    :catchall_a
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :cond_16
    :try_start_10
    invoke-virtual {v2, v3}, Lcom/android/server/telecom/Call;->setConferenceableCalls(Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :cond_17
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_11
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/ParcelableConnection;

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/telecom/CallsManager;->createCallForExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)Lcom/android/server/telecom/Call;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/server/telecom/CallIdMapper;->addCall(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->setConnectionService(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_12
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->setCallerDualPhoneNumber(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :cond_19
    move-object v3, v6

    goto/16 :goto_6

    :cond_1a
    move v3, v5

    goto/16 :goto_5

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
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_c
        :pswitch_16
    .end packed-switch
.end method
