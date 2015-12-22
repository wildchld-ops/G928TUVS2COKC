.class Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmsBroadcastReceiver"
.end annotation


# instance fields
.field private final LID_OPEN:I

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->LID_OPEN:I

    return-void
.end method

.method private updateActive()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbcc

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v1, v3, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)Z

    move-result v4

    # setter for: Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z
    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService;->access$002(Lcom/android/server/InputMethodManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->refreshImeWindowVisibilityLocked()V
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$200(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->updateActive()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v3, v4, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->hideImeNotification()V
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$300(Lcom/android/server/InputMethodManagerService;)V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)Z

    move-result v4

    # setter for: Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z
    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService;->access$002(Lcom/android/server/InputMethodManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v3, v3, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$500(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getLidState()I

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->updateActive()V

    goto :goto_0

    :cond_3
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    goto :goto_0

    :cond_4
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    goto :goto_0

    :cond_6
    const-string v4, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v5, "enable"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/InputMethodManagerService;->mIsScreenPinnedState:Z

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "lock_to_app_exit_locked"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v3, v3, Lcom/android/server/InputMethodManagerService;->mIsScreenPinnedState:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->hideImeNotification()V
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$300(Lcom/android/server/InputMethodManagerService;)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto :goto_1

    :cond_8
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
