.class Lcom/ime/implement/input/InputControllerImpl$1;
.super Ljava/lang/Object;
.source "InputControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/input/InputControllerImpl;->processFunctionKey(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/input/InputControllerImpl;


# direct methods
.method constructor <init>(Lcom/ime/implement/input/InputControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$000(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "mobilekeyboard_need_empty_keyboard"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$100(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$200(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v3

    const-string v4, "SYMBOLS_PAGE"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$300(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$400(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$500(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$600(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/implement/input/InputControllerImpl;->access$700(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v4

    # invokes: Lcom/ime/implement/input/InputControllerImpl;->isNeedToUpdateInpuModueWithLanguage(Lcom/ime/framework/common/Language;)Z
    invoke-static {v3, v4}, Lcom/ime/implement/input/InputControllerImpl;->access$800(Lcom/ime/implement/input/InputControllerImpl;Lcom/ime/framework/common/Language;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    invoke-virtual {v3}, Lcom/ime/implement/input/InputControllerImpl;->updateInputModule()V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$900(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    :cond_1
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$1000(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$1100(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$1200(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl$1;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/input/InputControllerImpl;->access$1300(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->createKeyMap()V

    :cond_2
    return-void
.end method
