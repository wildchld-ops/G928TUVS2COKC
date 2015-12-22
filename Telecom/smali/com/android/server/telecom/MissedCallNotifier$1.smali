.class Lcom/android/server/telecom/MissedCallNotifier$1;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x65

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Action received: %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # invokes: Lcom/android/server/telecom/MissedCallNotifier;->shouldUpdateMissedCalls(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/android/server/telecom/MissedCallNotifier;->access$000(Lcom/android/server/telecom/MissedCallNotifier;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # invokes: Lcom/android/server/telecom/MissedCallNotifier;->cancelMissedCallNotification()V
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$100(Lcom/android/server/telecom/MissedCallNotifier;)V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # invokes: Lcom/android/server/telecom/MissedCallNotifier;->updateOnStartup()V
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$200(Lcom/android/server/telecom/MissedCallNotifier;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.sec.telecom.peopleglance.RejectCall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v0}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "receive com.samsung.cover.REQUEST_REMOTEVIEWS "

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$300(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;-><init>(Landroid/content/Context;)V

    const-string v1, "support_sview_cover_photo_id"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mLastMissedCallPhotoIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$400(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "viewCoverNotifier.setPhoto "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mLastMissedCallPhotoIcon:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$400(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->setPhoto(Landroid/graphics/Bitmap;)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->updateMissedCallNotify()V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive ACTION_USER_FOREGROUND currentUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mUserId:I
    invoke-static {v2}, Lcom/android/server/telecom/MissedCallNotifier;->access$500(Lcom/android/server/telecom/MissedCallNotifier;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # invokes: Lcom/android/server/telecom/MissedCallNotifier;->cancelMissedCallNotification()V
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$100(Lcom/android/server/telecom/MissedCallNotifier;)V

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$600(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$600(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$600(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # setter for: Lcom/android/server/telecom/MissedCallNotifier;->mUserId:I
    invoke-static {v1, v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$502(Lcom/android/server/telecom/MissedCallNotifier;I)I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/MissedCallNotifier;->access$600(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
