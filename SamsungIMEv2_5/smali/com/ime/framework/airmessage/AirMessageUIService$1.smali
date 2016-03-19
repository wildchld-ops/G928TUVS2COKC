.class Lcom/ime/framework/airmessage/AirMessageUIService$1;
.super Landroid/os/Handler;
.source "AirMessageUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/airmessage/AirMessageUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/airmessage/AirMessageUIService;


# direct methods
.method constructor <init>(Lcom/ime/framework/airmessage/AirMessageUIService;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$1;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v1, "AirMessageUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI msg ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$1;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$1;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v1}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$100(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/airmessage/AirMessageUIService$1;->this$0:Lcom/ime/framework/airmessage/AirMessageUIService;

    # getter for: Lcom/ime/framework/airmessage/AirMessageUIService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/framework/airmessage/AirMessageUIService;->access$000(Lcom/ime/framework/airmessage/AirMessageUIService;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/PopupKeyboardView;->updateKeyboard(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
