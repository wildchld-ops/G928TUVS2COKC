.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mDirLTR:Z

.field private mEndCurPosition:I

.field private mIsSelectableTextView:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mTextView:Landroid/widget/TextView;

.field private oldEndPos:I

.field private selectRange:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iput v2, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEnableMultiSelection:Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v16

    if-nez v16, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    and-int/lit8 v16, v16, 0x2

    if-nez v16, :cond_3

    :cond_2
    const/16 v16, 0xd3

    move/from16 v0, v16

    if-ne v2, v0, :cond_12

    :cond_3
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$3100()Z

    move-result v16

    if-nez v16, :cond_6

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3200()Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_4

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3200()Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->clearMultiSelection()Z

    const/16 v16, 0x0

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3202(Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->canTextMultiSelection()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3400()Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_5

    # getter for: Landroid/widget/TextView;->mLastHoveredTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3500()J

    move-result-wide v16

    sub-long v16, v4, v16

    const-wide/16 v18, 0x64

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3400()Landroid/widget/TextView;

    move-result-object v16

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3202(Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_5
    const/16 v16, 0x0

    # setter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3402(Landroid/widget/TextView;)Landroid/widget/TextView;

    const/16 v16, 0x1

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3102(Z)Z

    :cond_6
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$3100()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3200()Landroid/widget/TextView;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    :cond_7
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3200()Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->hideControllers()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v16

    if-eqz v16, :cond_0

    :cond_9
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3200()Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v16, v0

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->hideControllers()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v16 .. v19}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;III)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->canSelectText()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3900(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->hideMultiSelectPopupWindow()V
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v16

    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v16, v0

    if-eqz v16, :cond_13

    :cond_c
    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4200(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v11, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v12, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_10

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4300(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_f

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v7

    if-nez v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v18

    aput v18, v16, v17

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_e
    :goto_2
    const-string v16, "TextView"

    const-string v17, "Pen down with side button! : start text selection"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    :cond_10
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    # invokes: Landroid/widget/TextView;->checkPosOnText(III)Z
    invoke-static/range {v16 .. v19}, Landroid/widget/TextView;->access$4000(Landroid/widget/TextView;III)Z

    move-result v16

    if-nez v16, :cond_b

    goto/16 :goto_0

    :cond_12
    const/16 v16, 0x0

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3102(Z)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3200()Landroid/widget/TextView;

    move-result-object v16

    if-nez v16, :cond_b

    goto/16 :goto_0

    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_2

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v16

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4400(Landroid/widget/TextView;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4200(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v3, v11, v16

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v6, v12, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v16 .. v19}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;III)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    sub-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_16
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    check-cast v15, Landroid/text/Spannable;

    invoke-static {v15}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Landroid/widget/TextView;->mHighlightPathBogus:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->playPenSelectionVibrator()Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_19

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1a

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_1a
    check-cast v15, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4602(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->isFocused()Z

    move-result v16

    if-nez v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->requestFocus()Z

    :cond_1c
    check-cast v15, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    :cond_1d
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->mTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4200(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v3, v11, v16

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v6, v12, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v17, v0

    sub-float v17, v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_1f
    :goto_4
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v16

    if-eqz v16, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_23

    const/4 v10, 0x1

    :cond_20
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_21

    if-eqz v10, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    # invokes: Landroid/widget/TextView;->selectCurrentWordForMultiSelection(II)Z
    invoke-static/range {v16 .. v18}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;II)Z

    move-object/from16 v16, v15

    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v16, v15

    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_21
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_26

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_25

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v16, v15

    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    check-cast v15, Landroid/text/Spannable;

    invoke-static {v15}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v16

    if-lez v16, :cond_24

    const/16 v16, 0x1

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v16

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$4602(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto/16 :goto_4

    :cond_23
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_24
    const/16 v16, 0x0

    goto :goto_6

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4602(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_29

    move-object/from16 v16, v15

    check-cast v16, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->showMultiSelectPopupWindow()V
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)V

    :try_start_0
    new-instance v8, Lcom/samsung/android/hermes/HermesServiceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/samsung/android/hermes/HermesServiceManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    const-string v16, "TextView"

    const-string v17, "Pen up with side button! : end text selection"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4602(Landroid/widget/TextView;Z)Z

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    :cond_28
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v16, "TextView"

    const-string v17, "** skip HERMES Service by IllegalStateException **"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # invokes: Landroid/widget/TextView;->isTextSelectionEnabled()Z
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$4900(Landroid/widget/TextView;)Z

    move-result v16

    if-nez v16, :cond_2a

    if-eqz v10, :cond_28

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x16

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    check-cast v15, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->stopSelectionActionMode()V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    if-eqz v16, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v16

    if-eqz v16, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Editor;->updateSelectionHandler()V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    goto/16 :goto_8

    :sswitch_3
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_2e

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object/from16 v16, v15

    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    check-cast v15, Landroid/text/Spannable;

    invoke-static {v15}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v16

    if-lez v16, :cond_2d

    const/16 v16, 0x1

    :goto_9
    move-object/from16 v0, v17

    move/from16 v1, v16

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$4602(Landroid/widget/TextView;Z)Z

    goto/16 :goto_0

    :cond_2d
    const/16 v16, 0x0

    goto :goto_9

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static/range {v16 .. v17}, Landroid/widget/TextView;->access$4602(Landroid/widget/TextView;Z)Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    if-ltz v16, :cond_0

    check-cast v15, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_2
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_3
    .end sparse-switch
.end method
