.class final Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_screen_on_intent()V
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_0

    :cond_3
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_screen_off_intent()V
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_0

    :cond_4
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v5, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    goto :goto_0

    :cond_5
    const-string v6, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    const-string v6, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mMultiWindowOn:Z
    invoke-static {v5, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$402(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->receive_multi_window_on_intent()V
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_0

    :cond_6
    const-string v6, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_7

    move v4, v5

    :cond_7
    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z
    invoke-static {v6, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$602(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method
