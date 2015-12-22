.class Lcom/android/server/input/InputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->batteryCoverUpdate:Z
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "InputManager"

    const-string/jumbo v3, "received boot_completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->batteryCoverStatus:Z
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)Z

    move-result v3

    const/4 v4, 0x1

    # invokes: Lcom/android/server/input/InputManagerService;->sendBatteryCoverIntent(ZZ)V
    invoke-static {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    goto :goto_0
.end method
