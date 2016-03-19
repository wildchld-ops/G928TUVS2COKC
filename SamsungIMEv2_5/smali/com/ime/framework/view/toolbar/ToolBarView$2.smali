.class Lcom/ime/framework/view/toolbar/ToolBarView$2;
.super Ljava/lang/Object;
.source "ToolBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/toolbar/ToolBarView;->getOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/toolbar/ToolBarView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/toolbar/ToolBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateSymbols()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getChineseLanguageCurrentView()Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ime/framework/view/SymbolScrollView;->hide()V

    invoke-virtual {v1}, Lcom/ime/framework/view/SymbolScrollView;->resetScroll()V

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->updateAndShowSymbolScrollView()V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$1000(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v6

    sget-boolean v11, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "SamsungIME_UnifiedIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ToolBarView onTouch action is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/ime/framework/view/toolbar/ToolBarPage;

    if-nez v11, :cond_2

    :cond_1
    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_2
    move-object/from16 v9, p1

    check-cast v9, Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {v9}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getToolbarPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # invokes: Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResUnPressed()V
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$500(Lcom/ime/framework/view/toolbar/ToolBarView;)V

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    const/4 v11, 0x0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mViewDownEnable:Z
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$000(Lcom/ime/framework/view/toolbar/ToolBarView;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Lcom/ime/framework/view/toolbar/ToolBarPage;->itemIsEnable()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$200(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    move-result-object v11

    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    invoke-virtual {v11, v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$600(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    invoke-static {v12}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$600(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v12

    const/4 v13, 0x0

    # invokes: Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResource(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V
    invoke-static {v11, v12, v13}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$700(Lcom/ime/framework/view/toolbar/ToolBarView;Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # setter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    invoke-static {v11, v5}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$602(Lcom/ime/framework/view/toolbar/ToolBarView;Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    const/4 v12, 0x1

    # invokes: Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResource(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V
    invoke-static {v11, v5, v12}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$700(Lcom/ime/framework/view/toolbar/ToolBarView;Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V

    const/4 v8, 0x1

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mViewDownEnable:Z
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$000(Lcom/ime/framework/view/toolbar/ToolBarView;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$200(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    move-result-object v11

    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    invoke-virtual {v11, v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # invokes: Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResUnPressed()V
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$500(Lcom/ime/framework/view/toolbar/ToolBarView;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mViewDownEnable:Z
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$000(Lcom/ime/framework/view/toolbar/ToolBarView;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Lcom/ime/framework/view/toolbar/ToolBarPage;->itemIsEnable()Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_6
    const/4 v10, 0x0

    const-string v11, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ime/framework/view/toolbar/ToolBarView;->playSoundEffect(I)V

    :cond_7
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isClipboardShowing()Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->dismissClipboard()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v11

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const/16 v12, -0x8a

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const/16 v12, -0x78

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x78

    aput v15, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_3

    :cond_b
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isClipboardShowing()Z

    move-result v11

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->dismissClipboard()V

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const-string v12, "S001"

    const-string v13, "Clipboard"

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const/16 v12, -0x7d

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_4

    :cond_e
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const/16 v12, -0x80

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v11

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const-string v12, "S001"

    const-string v13, "OCR"

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_10
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_TEXTTEMPLATE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v11

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const-string v12, "S001"

    const-string v13, "Text Template"

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_12
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_INPUT_MODES:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isClipboardShowing()Z

    move-result v11

    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->dismissClipboard()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_INPUT_MODE:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v12}, Lcom/ime/framework/common/InputManager;->showOrDismissPoup(Landroid/view/View;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_14
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_HANDWRITING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isClipboardShowing()Z

    move-result v11

    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->dismissClipboard()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$800(Lcom/ime/framework/view/toolbar/ToolBarView;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "HWR not enabled yet"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_16
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$900(Lcom/ime/framework/view/toolbar/ToolBarView;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v11

    invoke-virtual {v11}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    if-eqz v11, :cond_17

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$900(Lcom/ime/framework/view/toolbar/ToolBarView;)Landroid/inputmethodservice/InputMethodService;

    move-result-object v11

    invoke-virtual {v11}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_17
    const/4 v3, 0x0

    if-eqz v3, :cond_18

    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const/16 v12, -0x79

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x79

    aput v15, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_5

    :cond_19
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_THEME:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_EMOTICON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isClipboardShowing()Z

    move-result v11

    if-eqz v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->dismissClipboard()V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v11

    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const-string v12, "S001"

    const-string v13, "Emoticon"

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v11

    if-eqz v11, :cond_1c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const/16 v12, -0x142

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const/16 v12, -0x87

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    goto/16 :goto_1

    :cond_1d
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v12}, Lcom/ime/framework/common/InputManager;->showOrDismissPoup(Landroid/view/View;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const-string v12, "S001"

    const-string v13, "Text Edit Panel"

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1e
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_TYPE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$1000(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/16 v11, 0x8

    if-ne v2, v11, :cond_21

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v11

    if-eqz v11, :cond_1f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ime/framework/inputmode/InputModeManager;->isHanwriteBoxMode()Z

    move-result v11

    if-nez v11, :cond_1f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ime/framework/engine/bsthwr/HWManager;->dismissHandwritingView()V

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/ime/framework/engine/bsthwr/HWManager;->setBoxFloatingStatus(Z)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const/16 v12, -0x85

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    :cond_20
    :goto_6
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_21
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    const/16 v12, -0x83

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v11

    if-eqz v11, :cond_20

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$1000(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/ime/framework/inputmode/InputModeManager;->setPrevInputMethod(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$1000(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputModeForBST()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_22

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$1000(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v11

    if-nez v11, :cond_20

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/input/InputController;->changeToBSTHwrMode()V

    goto :goto_6

    :cond_22
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/ime/framework/engine/bsthwr/HWManager;->setBoxFloatingStatus(Z)V

    goto :goto_6

    :cond_23
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/ime/framework/repository/InputModeStatus;->setSymbolInputMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/toolbar/ToolBarView$2;->updateSymbols()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_24
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/ime/framework/repository/InputModeStatus;->setSymbolInputMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/toolbar/ToolBarView$2;->updateSymbols()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_25
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    const/4 v11, 0x2

    invoke-static {v11}, Lcom/ime/framework/repository/InputModeStatus;->setSymbolInputMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/toolbar/ToolBarView$2;->updateSymbols()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_26
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    const/4 v11, 0x3

    invoke-static {v11}, Lcom/ime/framework/repository/InputModeStatus;->setSymbolInputMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/toolbar/ToolBarView$2;->updateSymbols()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_27
    sget-boolean v11, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string v11, "SamsungIME_UnifiedIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ToolBarView onTouch ...touch item id is exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # getter for: Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$200(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    move-result-object v11

    sget-object v12, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    invoke-virtual {v11, v12}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    # invokes: Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResUnPressed()V
    invoke-static {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->access$500(Lcom/ime/framework/view/toolbar/ToolBarView;)V

    goto/16 :goto_1

    :cond_28
    if-eqz v10, :cond_4

    const-string v11, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/4 v12, 0x0

    invoke-interface {v6, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_29

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;->this$0:Lcom/ime/framework/view/toolbar/ToolBarView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ime/framework/view/toolbar/ToolBarView;->playSoundEffect(I)V

    :cond_29
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/ime/framework/repository/InputModeStatus;->setSymbolInputMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/toolbar/ToolBarView$2;->updateSymbols()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_2a
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/ime/framework/repository/InputModeStatus;->setSymbolInputMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/toolbar/ToolBarView$2;->updateSymbols()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_2b
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x2

    invoke-static {v11}, Lcom/ime/framework/repository/InputModeStatus;->setSymbolInputMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/toolbar/ToolBarView$2;->updateSymbols()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_2c
    sget-object v11, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5, v11}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d

    const/4 v11, 0x3

    invoke-static {v11}, Lcom/ime/framework/repository/InputModeStatus;->setSymbolInputMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/toolbar/ToolBarView$2;->updateSymbols()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_2d
    sget-boolean v11, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string v11, "SamsungIME_UnifiedIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ToolBarView onTouch ...touch item id is exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
