.class Lcom/android/server/telecom/secutils/CallMotion$1;
.super Ljava/lang/Object;
.source "CallMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/CallMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/CallMotion;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/CallMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    const-string v1, "CallMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "motion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "CallMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMotionType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mMotionType:I
    invoke-static {v3}, Lcom/android/server/telecom/secutils/CallMotion;->access$000(Lcom/android/server/telecom/secutils/CallMotion;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mMotionType:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallMotion;->access$000(Lcom/android/server/telecom/secutils/CallMotion;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string v0, "CallMotion"

    const-string v1, "FLIP_TOP_TO_BOTTOM   INCOMING_CALL_MUTE"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "flash_notification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mRinger:Lcom/android/server/telecom/Ringer;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallMotion;->access$100(Lcom/android/server/telecom/secutils/CallMotion;)Lcom/android/server/telecom/Ringer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0, v5}, Lcom/android/server/telecom/secutils/FlashNoti;->setIsDone(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mRinger:Lcom/android/server/telecom/Ringer;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallMotion;->access$100(Lcom/android/server/telecom/secutils/CallMotion;)Lcom/android/server/telecom/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Ringer;->silence()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallMotion;->access$200(Lcom/android/server/telecom/secutils/CallMotion;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone"

    const-string v2, "TURN"

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flash_notification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mRinger:Lcom/android/server/telecom/Ringer;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallMotion;->access$100(Lcom/android/server/telecom/secutils/CallMotion;)Lcom/android/server/telecom/Ringer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0, v6}, Lcom/android/server/telecom/secutils/FlashNoti;->controlFlashNotification(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mRinger:Lcom/android/server/telecom/Ringer;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallMotion;->access$100(Lcom/android/server/telecom/secutils/CallMotion;)Lcom/android/server/telecom/Ringer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti;->stopNotiFlash()V

    goto :goto_0

    :sswitch_1
    const-string v0, "flash_notification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mMotionType:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallMotion;->access$000(Lcom/android/server/telecom/secutils/CallMotion;)I

    move-result v0

    const/16 v1, 0x56

    if-ne v0, v1, :cond_0

    const-string v0, "CallMotion"

    const-string v1, "FLIP_BOTTOM_TO_TOP   INCOMING_FLASH_NOTIFICATION_BOTTOM_TOP"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mRinger:Lcom/android/server/telecom/Ringer;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallMotion;->access$100(Lcom/android/server/telecom/secutils/CallMotion;)Lcom/android/server/telecom/Ringer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0, v6}, Lcom/android/server/telecom/secutils/FlashNoti;->controlFlashNotification(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallMotion$1;->this$0:Lcom/android/server/telecom/secutils/CallMotion;

    # getter for: Lcom/android/server/telecom/secutils/CallMotion;->mRinger:Lcom/android/server/telecom/Ringer;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallMotion;->access$100(Lcom/android/server/telecom/secutils/CallMotion;)Lcom/android/server/telecom/Ringer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti;->stopNotiFlash()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x56 -> :sswitch_1
    .end sparse-switch
.end method
