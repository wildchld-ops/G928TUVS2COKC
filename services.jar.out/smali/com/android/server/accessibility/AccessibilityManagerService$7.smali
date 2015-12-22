.class Lcom/android/server/accessibility/AccessibilityManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z
    invoke-static {v8, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1402(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v9, "android.intent.extra.user_handle"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V
    invoke-static {v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v9, "android.intent.extra.user_handle"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V
    invoke-static {v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    goto :goto_0

    :cond_2
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v7

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v8, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v8, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    :cond_3
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEVisible:Z
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v8

    if-ne v8, v11, :cond_0

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEOpen:Z
    invoke-static {v8, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1802(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEVisible:Z
    invoke-static {v8, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1702(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto :goto_0

    :cond_4
    const-string v8, "ResponseAxT9Info"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v8, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mBTKeyboardState:Z
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-ne v3, v11, :cond_5

    if-nez v4, :cond_5

    const/4 v3, 0x0

    :cond_5
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEVisible:Z
    invoke-static {v8, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1702(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEOpen:Z
    invoke-static {v8, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1802(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEOpen:Z
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v8

    if-eq v8, v3, :cond_0

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->isIMEOpen:Z
    invoke-static {v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1802(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto/16 :goto_0

    :cond_7
    const-string v8, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "android.bluetooth.profile.extra.STATE"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "android.bluetooth.profile.extra.isKeyboard"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v8, 0x2

    if-ne v6, v8, :cond_8

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mBTKeyboardState:Z
    invoke-static {v8, v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1902(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mBTKeyboardState:Z
    invoke-static {v8, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1902(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto/16 :goto_0
.end method
