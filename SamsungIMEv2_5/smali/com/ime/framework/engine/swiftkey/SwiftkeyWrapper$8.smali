.class Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$8;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSuggestionUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$8;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x26

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$8;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$8;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$8;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
