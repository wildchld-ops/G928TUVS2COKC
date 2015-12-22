.class Lcom/android/incallui/SecTabletInCallService$1;
.super Ljava/lang/Object;
.source "SecTabletInCallService.java"

# interfaces
.implements Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletInCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "SecTabletInCallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.Keyguard.LOCK_NOTIFY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # setter for: Lcom/android/incallui/SecTabletInCallService;->mRecreateService:Z
    invoke-static {v0, v4}, Lcom/android/incallui/SecTabletInCallService;->access$002(Lcom/android/incallui/SecTabletInCallService;Z)Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$100(Lcom/android/incallui/SecTabletInCallService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$200(Lcom/android/incallui/SecTabletInCallService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$300(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7de

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # setter for: Lcom/android/incallui/SecTabletInCallService;->mRecreateService:Z
    invoke-static {v0, v4}, Lcom/android/incallui/SecTabletInCallService;->access$002(Lcom/android/incallui/SecTabletInCallService;Z)Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$100(Lcom/android/incallui/SecTabletInCallService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->dismissInCallMenu()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0, v3, v3}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$200(Lcom/android/incallui/SecTabletInCallService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$200(Lcom/android/incallui/SecTabletInCallService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0, v5}, Lcom/android/incallui/SecTabletInCallService;->clearFlags(I)V

    goto :goto_0

    :cond_5
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0, v5}, Lcom/android/incallui/SecTabletInCallService;->addFlags(I)V

    goto :goto_0

    :cond_6
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # setter for: Lcom/android/incallui/SecTabletInCallService;->mRecreateService:Z
    invoke-static {v0, v4}, Lcom/android/incallui/SecTabletInCallService;->access$002(Lcom/android/incallui/SecTabletInCallService;Z)Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$100(Lcom/android/incallui/SecTabletInCallService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    goto/16 :goto_0

    :cond_7
    const-string v0, "com.skt.tgroupon.action.REQUEST_CALL_SCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # setter for: Lcom/android/incallui/SecTabletInCallService;->forceRecreate:Z
    invoke-static {v0, v3}, Lcom/android/incallui/SecTabletInCallService;->access$402(Lcom/android/incallui/SecTabletInCallService;Z)Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$1;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    goto/16 :goto_0
.end method
