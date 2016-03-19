.class Lcom/ime/framework/common/InputManagerImpl$16;
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-boolean v0, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "mKeyguardShortcutReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->cancelGuidePopupMessage()V
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$5600(Lcom/ime/framework/common/InputManagerImpl;)V

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/ime/framework/common/InputManagerImpl;->guidePopupIsHidden()V

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$16;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->cancelPredictionWordMessage()V
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$5700(Lcom/ime/framework/common/InputManagerImpl;)V

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sService:Lcom/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5800()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sService:Lcom/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5800()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/common/AbstractInputMethod;->requestHideSelf(I)V

    :cond_1
    return-void
.end method
