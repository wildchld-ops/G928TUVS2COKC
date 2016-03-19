.class Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$5;
.super Ljava/lang/Object;
.source "AbstractSwiftkeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->enableAllModelAfterBuildPrediction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$5;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$5;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    invoke-virtual {v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEmojiPredictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$5;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    # invokes: Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->enableAllModelByThread(Lcom/touchtype_fluency/TagSelector;)V
    invoke-static {v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->access$200(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Lcom/touchtype_fluency/TagSelector;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$5;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$5;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    iget-object v1, v1, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mNoEmojiTagSelector:Lcom/touchtype_fluency/TagSelector;

    # invokes: Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->enableAllModelByThread(Lcom/touchtype_fluency/TagSelector;)V
    invoke-static {v0, v1}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->access$200(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Lcom/touchtype_fluency/TagSelector;)V

    goto :goto_0
.end method
