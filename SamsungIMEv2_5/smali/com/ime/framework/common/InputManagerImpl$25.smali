.class Lcom/ime/framework/common/InputManagerImpl$25;
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$25;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-boolean v0, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "mScreenLockReceiver onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$25;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->isLockScreenMode()Z
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$6600(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$25;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/common/InputManagerImpl;->setToolbarVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$25;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->receiveScreenlock()V
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$6700(Lcom/ime/framework/common/InputManagerImpl;)V

    return-void
.end method
