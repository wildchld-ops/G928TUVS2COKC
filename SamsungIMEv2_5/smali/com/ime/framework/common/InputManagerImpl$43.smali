.class Lcom/ime/framework/common/InputManagerImpl$43;
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$43;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$43;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1}, Lcom/ime/framework/common/InputManagerImpl;->isUseVOResourceManager()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/myscript/atk/rmc/VOLanguagePackManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->unregisterReceiver()V

    invoke-virtual {v0}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->clearInstance()V

    :cond_0
    return-void
.end method
