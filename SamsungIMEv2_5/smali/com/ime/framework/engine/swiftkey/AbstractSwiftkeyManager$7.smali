.class Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$7;
.super Ljava/lang/Object;
.source "AbstractSwiftkeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnDynamicModel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

.field final synthetic val$trainerSequence:Lcom/touchtype_fluency/Sequence;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Lcom/touchtype_fluency/Sequence;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$7;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    iput-object p2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$7;->val$trainerSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$7;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    # getter for: Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDLMLocker:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->access$000(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$7;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    iget-object v0, v0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$7;->val$trainerSequence:Lcom/touchtype_fluency/Sequence;

    invoke-interface {v0, v2}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
