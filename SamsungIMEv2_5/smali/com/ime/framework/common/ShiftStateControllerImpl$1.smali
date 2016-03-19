.class Lcom/ime/framework/common/ShiftStateControllerImpl$1;
.super Ljava/lang/Object;
.source "ShiftStateControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/common/ShiftStateControllerImpl;->updateLetterModeByThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/ShiftStateControllerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/ShiftStateControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/ShiftStateControllerImpl$1;->this$0:Lcom/ime/framework/common/ShiftStateControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/ShiftStateControllerImpl$1;->this$0:Lcom/ime/framework/common/ShiftStateControllerImpl;

    invoke-virtual {v0}, Lcom/ime/framework/common/ShiftStateControllerImpl;->updateLetterMode()Z

    iget-object v0, p0, Lcom/ime/framework/common/ShiftStateControllerImpl$1;->this$0:Lcom/ime/framework/common/ShiftStateControllerImpl;

    # getter for: Lcom/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/common/ShiftStateControllerImpl;->access$000(Lcom/ime/framework/common/ShiftStateControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/common/ShiftStateControllerImpl$1;->this$0:Lcom/ime/framework/common/ShiftStateControllerImpl;

    # getter for: Lcom/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/common/ShiftStateControllerImpl;->access$000(Lcom/ime/framework/common/ShiftStateControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/common/ShiftStateControllerImpl$1;->this$0:Lcom/ime/framework/common/ShiftStateControllerImpl;

    # getter for: Lcom/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/common/ShiftStateControllerImpl;->access$000(Lcom/ime/framework/common/ShiftStateControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/input/InputController;->updateShiftState()V

    :cond_0
    return-void
.end method
