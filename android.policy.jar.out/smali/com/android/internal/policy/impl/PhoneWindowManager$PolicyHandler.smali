.class Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v4, 0x69

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->showRecentApps(Z)V
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "keyguard shown"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goingToSleep(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-string v1, "WindowManager"

    const-string v2, "keyguard not shown"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->wakingUp()V

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$400()I

    move-result v2

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->finishKeyguardDrawn(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    goto :goto_0

    :sswitch_9
    const-string v1, "WindowManager"

    const-string v2, "!@Boot: Keyguard drawn timeout. Setting mKeyguardDrawComplete"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$400()I

    move-result v2

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->finishKeyguardDrawn(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    goto :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenTurnDisplayId:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$400()I

    move-result v2

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->finishWindowsDrawn(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->handleHideBootMessage()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchVoiceAssistWithWakeLock(Z)V

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :sswitch_d
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    :goto_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->powerPress(JZI)V
    invoke-static {v4, v6, v7, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;JZI)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPowerKeyPress()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    :sswitch_e
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    :goto_3
    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->endCallPress(JZI)V
    invoke-static {v4, v6, v7, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;JZI)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->finishEndCallKeyPress()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    :sswitch_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->powerLongPress()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyToSSRM(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->enableToolBox()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->disableToolBox()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateSideKeyPanelState(Z)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateSideKeyPanelState(Z)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateBottomKeyPanelState(ZZ)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateBottomKeyPanelState(ZZ)V

    goto/16 :goto_0

    :sswitch_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->showBottomKeyPanel(Z)V

    goto/16 :goto_0

    :sswitch_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->showBottomKeyPanel(Z)V

    goto/16 :goto_0

    :sswitch_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-result-object v4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto/16 :goto_0

    :sswitch_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto/16 :goto_0

    :sswitch_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto/16 :goto_0

    :sswitch_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "multiwindow_facade"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v1, :cond_5

    const-string v1, "mobile_keyboard"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "mobile_keyboard"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_f
        0xf -> :sswitch_0
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x32 -> :sswitch_13
        0x33 -> :sswitch_14
        0x34 -> :sswitch_15
        0x35 -> :sswitch_16
        0x36 -> :sswitch_17
        0x37 -> :sswitch_18
        0x38 -> :sswitch_19
        0x39 -> :sswitch_1a
        0x3c -> :sswitch_1b
        0x3d -> :sswitch_1c
        0x3e -> :sswitch_e
        0x69 -> :sswitch_7
    .end sparse-switch
.end method
