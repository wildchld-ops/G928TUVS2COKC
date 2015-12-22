.class Lcom/android/server/smartclip/SmartClipView$5;
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

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$400(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # invokes: Lcom/android/server/smartclip/SmartClipView;->isPossibleCapture()Z
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$1000(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SmartClipView"

    const-string v4, "MDM: Screen Capture Disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # invokes: Lcom/android/server/smartclip/SmartClipView;->isVzwSetupRunning()Z
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$1100(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SmartClipView"

    const-string v4, " Verizon Setup Wizard is running ignore this event"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-boolean v3, v3, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    if-eq v3, v4, :cond_2

    const-string v3, "SmartClipView"

    const-string/jumbo v4, "flashannotate couldn\'t by MDM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v3}, Lcom/android/server/smartclip/SmartClipView;->isLockScreenShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SmartClipView"

    const-string v4, "Now keyguard is on!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v3, "SmartClipView"

    const-string v4, "Long pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const-string v4, "com.sec.spen.flashannotate"

    # invokes: Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/server/smartclip/SmartClipView;->access$1200(Lcom/android/server/smartclip/SmartClipView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SmartClipView"

    const-string/jumbo v4, "flashannotate is live!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z
    invoke-static {v3, v4}, Lcom/android/server/smartclip/SmartClipView;->access$902(Lcom/android/server/smartclip/SmartClipView;Z)Z

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z
    invoke-static {v3, v4}, Lcom/android/server/smartclip/SmartClipView;->access$1302(Lcom/android/server/smartclip/SmartClipView;Z)Z

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v3, v2}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v3}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z
    invoke-static {v3, v4}, Lcom/android/server/smartclip/SmartClipView;->access$1402(Lcom/android/server/smartclip/SmartClipView;Z)Z

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v3, v3, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    if-eqz v3, :cond_5

    const-string v3, "SmartClipView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpenGestureView: mPenLongPress: FrontWindow SurfaceLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v5, v5, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$1500(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "FrontWindowLayer"

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget v5, v5, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v3}, Lcom/android/server/smartclip/SmartClipView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$1500(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$5;->this$0:Lcom/android/server/smartclip/SmartClipView;

    # getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
