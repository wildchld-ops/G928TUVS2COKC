.class Lcom/android/server/smartclip/SmartClipView$6;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "lock_screen_quick_note"

    const/4 v9, -0x2

    invoke-static {v7, v8, v4, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_0

    move v4, v5

    :cond_0
    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v6, v4}, Lcom/android/server/smartclip/SmartClipView;->access$1602(Lcom/android/server/smartclip/SmartClipView;Z)Z

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$1700(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$1600(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$1800(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const-string v4, "SmartClipView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Double tap is disable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$1600(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$1800(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_0
    const-string v4, "SmartClipView"

    const-string v6, "Double tapped!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v4, v6}, Lcom/android/server/smartclip/SmartClipView;->access$1902(Lcom/android/server/smartclip/SmartClipView;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v4}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$1900(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2000(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2100(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2100(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    :cond_4
    if-eq v0, v5, :cond_5

    if-eq v0, v10, :cond_5

    if-eq v1, v5, :cond_5

    if-ne v1, v10, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v4}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.spengesture.DOUBLE_TAB"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v4}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntentSnote:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "SmartClipView"

    const-string/jumbo v5, "mPenDoubleTap : Snote action memo launch failed. Trying to launch diotek PenMemo..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$6;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntentDiotek:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$2300(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "SmartClipView"

    const-string/jumbo v5, "mPenDoubleTap : Diotek PenMemo launch failed. Sending legacy quick memo broadcasting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.QUICKMEMO_LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
