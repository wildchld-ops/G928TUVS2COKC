.class Lcom/android/server/telecom/MissedCallNotifier$2;
.super Landroid/os/Handler;
.source "MissedCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/MissedCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/MissedCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/MissedCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v4, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler: unexpected message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "START_QUERY_FOR_OTHER_DEVICES "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$700(Lcom/android/server/telecom/MissedCallNotifier;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPrayModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$300(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/telecom/MissedCallNotifier;->access$700(Lcom/android/server/telecom/MissedCallNotifier;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$702(Lcom/android/server/telecom/MissedCallNotifier;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$700(Lcom/android/server/telecom/MissedCallNotifier;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/telecom/MissedCallNotifier;->mExpandedText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$802(Lcom/android/server/telecom/MissedCallNotifier;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->quickpanelNotifier:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$900(Lcom/android/server/telecom/MissedCallNotifier;)Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$1000(Lcom/android/server/telecom/MissedCallNotifier;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " missed calls to QuickPanel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->quickpanelNotifier:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$900(Lcom/android/server/telecom/MissedCallNotifier;)Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$1100(Lcom/android/server/telecom/MissedCallNotifier;)Lcom/android/server/telecom/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v3}, Lcom/android/server/telecom/MissedCallNotifier;->access$1100(Lcom/android/server/telecom/MissedCallNotifier;)Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/MissedCallNotifier;->getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I
    invoke-static {v3}, Lcom/android/server/telecom/MissedCallNotifier;->access$1000(Lcom/android/server/telecom/MissedCallNotifier;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mExpandedText:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/telecom/MissedCallNotifier;->access$800(Lcom/android/server/telecom/MissedCallNotifier;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v5, v5, Lcom/android/server/telecom/MissedCallNotifier;->mNotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->notifyMissedCall(Lcom/android/server/telecom/Call;Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification$Builder;)V

    :cond_1
    :goto_1
    new-instance v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$300(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I
    invoke-static {v2}, Lcom/android/server/telecom/MissedCallNotifier;->access$1000(Lcom/android/server/telecom/MissedCallNotifier;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missed calls to SViewCover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$1100(Lcom/android/server/telecom/MissedCallNotifier;)Lcom/android/server/telecom/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v3}, Lcom/android/server/telecom/MissedCallNotifier;->access$1100(Lcom/android/server/telecom/MissedCallNotifier;)Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/MissedCallNotifier;->getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I
    invoke-static {v3}, Lcom/android/server/telecom/MissedCallNotifier;->access$1000(Lcom/android/server/telecom/MissedCallNotifier;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->notifyMissedCall(Lcom/android/server/telecom/Call;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$600(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$600(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # invokes: Lcom/android/server/telecom/MissedCallNotifier;->updateOnStartup()V
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$200(Lcom/android/server/telecom/MissedCallNotifier;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
