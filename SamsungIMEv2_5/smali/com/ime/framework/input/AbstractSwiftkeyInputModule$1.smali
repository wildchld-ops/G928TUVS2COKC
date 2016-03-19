.class Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;
.super Landroid/os/Handler;
.source "AbstractSwiftkeyInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;


# direct methods
.method constructor <init>(Lcom/ime/framework/input/AbstractSwiftkeyInputModule;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x2b

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v3, v3, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->needToBackUpMobileKeyboardCustomKey(Z)V

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v2}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v3, v3, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v2, v5}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v2}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v2, v2, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->IsKeyboardShowinginProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v2, v2, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v2, v2, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v2, v5}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v2}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v2, v5}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v3, v3, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isForcePredictionOff()Z

    move-result v1

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v4, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v4, v4, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v3, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v2, v2, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v2, v2, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->checkChineseSequence()V

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v2, v2, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v2, v5}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    :goto_1
    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v2}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v2, v2, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->updateSelectList()I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_4
        0x26 -> :sswitch_5
        0x2b -> :sswitch_3
        0x2d -> :sswitch_2
        0x3a -> :sswitch_1
    .end sparse-switch
.end method
