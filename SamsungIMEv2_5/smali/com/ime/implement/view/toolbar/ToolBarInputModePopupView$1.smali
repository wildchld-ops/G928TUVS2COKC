.class Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;
.super Ljava/lang/Object;
.source "ToolBarInputModePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;


# direct methods
.method constructor <init>(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    const/16 v13, 0x9

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getService()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$000(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Landroid/widget/PopupWindow;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "SamsungIME_UnifiedIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ToolBarInputModePopupView: mInputManager: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v8, v8, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mIme: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v8, v8, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getService()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mPopupWindow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v8}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$000(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Landroid/widget/PopupWindow;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    invoke-virtual {v6, p1}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$000(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    if-ne v6, v12, :cond_4

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/framework/engine/bsthwr/HWManager;->hideHandwritingView()V

    :cond_4
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getVoiceRecognitionTrigger()Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->closing()V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget-boolean v6, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "SamsungIME_UnifiedIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ToolBarInputModePopupView: onClick() newKeyboardTypeId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-ne v3, v13, :cond_c

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setIsShuangPinMode(Z)V

    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eq v3, v11, :cond_7

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/common/InputManager;->setPenDetectionHwrMode(Z)V

    :cond_7
    if-eq v3, v11, :cond_8

    if-ne v3, v12, :cond_d

    :cond_8
    invoke-static {v9}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v1

    if-eq v3, v9, :cond_a

    if-nez v3, :cond_11

    :cond_a
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$000(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v2}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v6

    const v7, 0x7a68434e

    if-ne v6, v7, :cond_e

    if-nez v3, :cond_e

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v2, v13}, Lcom/ime/framework/common/Language;->setInputMethodSubType(I)V

    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v3}, Lcom/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChineseStrokeModeOn()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/common/InputManager;->setChineseStrokeMode(Z)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandidateLayout()V

    :cond_b
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$100(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z

    move-result v6

    if-eqz v6, :cond_f

    if-eqz v1, :cond_f

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->updateInputModule()V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v7, v7, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    :goto_4
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/common/InputManager;->setIsShuangPinMode(Z)V

    goto/16 :goto_1

    :cond_d
    invoke-static {v10}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    goto/16 :goto_2

    :cond_e
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v2, v3}, Lcom/ime/framework/common/Language;->setInputMethodSubType(I)V

    goto :goto_3

    :cond_f
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$200(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->updateInputModule()V

    goto :goto_4

    :cond_10
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v3}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v7, v7, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    goto :goto_4

    :cond_11
    const/16 v6, 0xa

    if-ne v3, v6, :cond_14

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$000(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v2}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Lcom/ime/framework/common/Language;->setInputMethodSubType(I)V

    invoke-static {v9}, Lcom/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setChineseStrokeMode(Z)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$300(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z

    move-result v6

    if-eqz v6, :cond_12

    if-eqz v1, :cond_12

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->updateInputModule()V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v7, v7, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    :goto_5
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandidateLayout()V

    goto/16 :goto_0

    :cond_12
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$400(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->updateInputModule()V

    goto :goto_5

    :cond_13
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v7, v7, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    goto :goto_5

    :cond_14
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v3, v11, :cond_15

    if-ne v3, v12, :cond_1

    :cond_15
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # getter for: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$000(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v2}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v2, v3}, Lcom/ime/framework/common/Language;->setInputMethodSubType(I)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v3}, Lcom/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/common/InputManager;->setChineseStrokeMode(Z)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    # invokes: Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z
    invoke-static {v6}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->access$500(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->updateInputModule()V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v7, v7, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    :goto_6
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_0

    :cond_16
    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v3}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v6, v6, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;->this$0:Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;

    iget-object v7, v7, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    goto :goto_6
.end method
