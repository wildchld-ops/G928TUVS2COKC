.class Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;
.super Ljava/lang/Object;
.source "KeyboardHeightSettingsFragmentTablet.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final MINIMIZE:I

.field final PRESSED:I

.field mKeyboardState:I

.field final synthetic this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

.field final synthetic val$mHandlerMinimize:Landroid/graphics/drawable/Drawable;

.field final synthetic val$mHandlerPressed:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iput-object p2, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->val$mHandlerPressed:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->val$mHandlerMinimize:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->PRESSED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->MINIMIZE:I

    iput v1, p0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->mKeyboardState:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :goto_0
    const/4 v10, 0x0

    return v10

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mAdjustValue:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->ll:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v14, v14, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v15, v15, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->val$mHandlerPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->mKeyboardState:I

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v12

    # invokes: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->nearestLevel(I[I)I
    invoke-static {v10, v11, v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;I[I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10, v1}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightDelta(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setNeedChangeKeyboardHeight(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v10}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandidateLayout()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v11

    add-int v7, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mDeviceHeight:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v7

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v14, v14, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "KeyPressModelEx"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    const/4 v4, 0x0

    :goto_1
    array-length v10, v5

    if-ge v4, v10, :cond_3

    aget-object v10, v5, v4

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->val$mHandlerPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->mKeyboardState:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->et:Landroid/content/SharedPreferences$Editor;

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v10

    if-nez v10, :cond_8

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->et:Landroid/content/SharedPreferences$Editor;

    const-string v11, "keyboard_height_level"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v12

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->et:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v10

    add-int v9, v1, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v11}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    if-le v9, v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v11}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    add-int v9, v10, v11

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v10

    if-nez v10, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.sec.android.inputmethod.height"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->et:Landroid/content/SharedPreferences$Editor;

    const-string v11, "keyboard_height_level_landscape"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v12

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v11}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v11}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int v9, v10, v11

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.sec.android.inputmethod.height_landscape"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    iput v11, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mDeviceHeight:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v12

    add-int/2addr v11, v12

    sub-int v6, v10, v11

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mAdjustValue:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v11}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v11

    const/4 v12, 0x4

    aget v11, v11, v12

    sub-int v11, v6, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    if-lt v10, v11, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mAdjustValue:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v11}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int v11, v6, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    if-gt v10, v11, :cond_d

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->mKeyboardState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->val$mHandlerPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->mKeyboardState:I

    :cond_b
    :goto_4
    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mAdjustValue:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v14, v14, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mAdjustValue:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v14, v14, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mDeviceHeight:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v12

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mAdjustValue:I

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightDelta(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v12

    # invokes: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->nearestLevel(I[I)I
    invoke-static {v10, v11, v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;I[I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10, v1}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightDelta(I)V

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->mKeyboardState:I

    if-nez v10, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->val$mHandlerMinimize:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->mKeyboardState:I

    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mAdjustValue:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v11}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v11

    const/4 v12, 0x4

    aget v11, v11, v12

    sub-int v11, v6, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v12

    const/4 v13, 0x4

    aget v12, v12, v13

    sub-int v12, v6, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v14, v14, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v12

    const/4 v13, 0x4

    aget v12, v12, v13

    sub-int v12, v6, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v14, v14, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mAdjustValue:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v11}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int v11, v6, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v12, v12, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    if-le v10, v11, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mMoveHandler:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    sub-int v12, v6, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v14, v14, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget-object v10, v10, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mBaseHandler:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v11, v11, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerX:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->heightLevels:[I
    invoke-static {v12}, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;)[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    sub-int v12, v6, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->StatusBarHeight:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v13, v13, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;

    iget v14, v14, Lcom/ime/implement/setting/KeyboardHeightSettingsFragmentTablet;->mHandlerHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
