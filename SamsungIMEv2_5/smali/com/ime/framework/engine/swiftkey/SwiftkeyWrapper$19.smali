.class Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Lcom/touchtype_fluency/util/PredictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->registerPredictionListener()V
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

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPredictionsReady(Lcom/touchtype_fluency/Predictions;)V
    .locals 3

    const/16 v2, 0x14

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/ime/framework/engine/swiftkey/SwiftkeyManager;
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1500()Lcom/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyManager;->setPredictions(Lcom/touchtype_fluency/Predictions;)V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mActiveIndex:I
    invoke-static {v0, v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$2302(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$19;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$100(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
