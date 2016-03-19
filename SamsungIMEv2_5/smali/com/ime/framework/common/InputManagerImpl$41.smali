.class Lcom/ime/framework/common/InputManagerImpl$41;
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$41;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$41;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/view/ViewController;->dismissPopupCandidate()V

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$41;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0, p2}, Lcom/ime/framework/common/InputManagerImpl;->dismissPopupForSystemDialogs(Landroid/content/Intent;)V

    return-void
.end method
