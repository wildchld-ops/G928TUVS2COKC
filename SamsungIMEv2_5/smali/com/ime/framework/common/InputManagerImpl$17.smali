.class Lcom/ime/framework/common/InputManagerImpl$17;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v1, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "mConnectHWKeyboard onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConnectHWKeyboard onReceive() state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    # operator++ for: Lcom/ime/framework/common/InputManagerImpl;->mDOCKKeyboardCount:I
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5908()I

    # |= operator for: Lcom/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4876(I)I

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mDocKeyboardConnected:Z
    invoke-static {v1, v4}, Lcom/ime/framework/common/InputManagerImpl;->access$6002(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v1, v4}, Lcom/ime/framework/common/InputManagerImpl;->access$5100(Lcom/ime/framework/common/InputManagerImpl;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez v0, :cond_2

    # --operator for: Lcom/ime/framework/common/InputManagerImpl;->mDOCKKeyboardCount:I
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5906()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x2

    # &= operator for: Lcom/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$4872(I)I

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$4800()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mDocKeyboardConnected:Z
    invoke-static {v1, v5}, Lcom/ime/framework/common/InputManagerImpl;->access$6002(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$17;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v1, v5}, Lcom/ime/framework/common/InputManagerImpl;->access$5100(Lcom/ime/framework/common/InputManagerImpl;Z)V

    goto :goto_0
.end method
