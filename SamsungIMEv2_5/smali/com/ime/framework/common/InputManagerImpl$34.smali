.class Lcom/ime/framework/common/InputManagerImpl$34;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$34;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/16 v0, 0x3d

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$34;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mPowerSavingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$7700(Lcom/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$34;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mPowerSavingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$7700(Lcom/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
