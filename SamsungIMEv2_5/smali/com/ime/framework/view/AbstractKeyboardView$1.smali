.class Lcom/ime/framework/view/AbstractKeyboardView$1;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/AbstractKeyboardView$1;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$1;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->updateSytemOneHandOperationSetting(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$1;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/input/InputController;->changeToNormalKeyboardMode()V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$1;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-boolean v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mIsSwiftKeyMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractKeyboardView$1;->this$0:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    :cond_0
    return-void
.end method
