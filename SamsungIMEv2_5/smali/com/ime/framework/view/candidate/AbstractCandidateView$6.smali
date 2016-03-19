.class Lcom/ime/framework/view/candidate/AbstractCandidateView$6;
.super Ljava/lang/Object;
.source "AbstractCandidateView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateView;->showExpandPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

.field final synthetic val$inputMethod:I


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iput p2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->val$inputMethod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26

    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v15

    :goto_0
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    sub-int v23, v15, v17

    sub-int v23, v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090728

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static/range {v21 .. v21}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I

    move/from16 v21, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v21, v21, 0x2

    mul-int v21, v21, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v20, v21

    if-gez v21, :cond_1

    const/4 v4, 0x0

    :cond_1
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v5, v0, :cond_10

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->setSymPageClick(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mFireUpdateCandidateRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mFireUpdateCandidateRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x64

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/16 v21, 0x0

    :goto_1
    return v21

    :cond_2
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v15

    goto/16 :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/16 v21, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isTouchUmlauntInCandidate()Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardUmlautCandidate(Z)V

    :cond_4
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/16 v21, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_d

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;
    invoke-static/range {v21 .. v21}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$200(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;
    invoke-static/range {v21 .. v21}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$200(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Landroid/view/View;

    move-result-object v9

    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v16

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, v16

    iget v14, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v21

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    add-int v21, v21, v13

    add-int v6, v21, v14

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v21

    if-nez v21, :cond_7

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v18, v21

    if-lez v21, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v18, v21

    if-gez v21, :cond_8

    int-to-float v0, v10

    move/from16 v21, v0

    sub-float v21, v19, v21

    int-to-float v0, v13

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_8

    int-to-float v0, v10

    move/from16 v21, v0

    sub-float v21, v19, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v22, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static/range {v22 .. v22}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x2

    mul-int v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_8

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/16 v21, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v9

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v22, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static/range {v22 .. v22}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v10

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v18, v21

    if-lez v21, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v18, v21

    if-gez v21, :cond_9

    int-to-float v0, v10

    move/from16 v21, v0

    sub-float v21, v19, v21

    int-to-float v0, v13

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_9

    int-to-float v0, v10

    move/from16 v21, v0

    sub-float v21, v19, v21

    int-to-float v0, v6

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_9

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/16 v21, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_a

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->val$inputMethod:I

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_c

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->setCandidateExpandDismissedByTouchInterceptor(Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v21

    if-nez v21, :cond_d

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/16 v21, 0x1

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v21

    if-nez v21, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_f
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/16 v21, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    const/16 v21, 0x0

    goto/16 :goto_1
.end method
