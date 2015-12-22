.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mIsMouseTouchDown:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsMouseTouchDown:Z

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionEndHandleView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->updatePosition()V

    return-void
.end method

.method private initDrawables()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$4402(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$4502(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->showNewActionPopupWindow(I)V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->getNewActionPopupWindow()Landroid/widget/Editor$NewActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setNewActionPopupWindow(Landroid/widget/Editor$NewActionPopupWindow;)V

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V

    goto :goto_0
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updatePosition()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/Editor$SelectionStartHandleView;->updatePosition(IIZZ)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/Editor$SelectionEndHandleView;->updatePosition(IIZZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hideNewActionPopupWindow()V

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hideNewActionPopupWindow()V

    :cond_3
    return-void
.end method

.method public hideAllNewActionPopup()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    :cond_1
    return-void
.end method

.method public initPreviousOffset()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->initPreviousOffset()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->initPreviousOffset()V

    :cond_1
    return-void
.end method

.method public isSelectionEndDragged()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->onDetached()V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->onDetached()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    # getter for: Landroid/widget/Editor;->mDisableDoubleTapTextSelection:Z
    invoke-static {}, Landroid/widget/Editor;->access$4600()Z

    move-result v20

    if-nez v20, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-wide/from16 v22, v0

    sub-long v10, v20, v22

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v10, v20

    if-gtz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    move/from16 v20, v0

    sub-float v4, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    move/from16 v20, v0

    sub-float v5, v19, v20

    mul-float v20, v4, v4

    mul-float v21, v5, v5

    add-float v6, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v7

    mul-int v20, v7, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v6, v20

    if-gez v20, :cond_3

    const/4 v14, 0x1

    :goto_1
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    # invokes: Landroid/widget/Editor;->isPositionOnText(FF)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;FF)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v21, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v16

    if-eqz v9, :cond_1

    if-nez v16, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->isFocused()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->requestLayout()V

    :cond_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mIsMouseTouchDown:Z

    goto/16 :goto_0

    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mIsMouseTouchDown:Z

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    move/from16 v21, v0

    sub-float v4, v20, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    move/from16 v21, v0

    sub-float v5, v20, v21

    mul-float v20, v4, v4

    mul-float v21, v5, v5

    add-float v6, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v8

    mul-int v20, v8, v8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v6, v20

    if-lez v20, :cond_0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsMouseTouchDown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    if-eq v13, v12, :cond_6

    if-le v13, v12, :cond_5

    move v15, v13

    move v13, v12

    move v12, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    check-cast v20, Landroid/text/Spannable;

    move-object/from16 v0, v20

    invoke-static {v0, v13, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # invokes: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->isFocused()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v20 .. v20}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->requestLayout()V

    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mIsMouseTouchDown:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    :cond_0
    return-void
.end method

.method public relocateNewActionPopupWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionEndDragged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->getNewActionPopupWindow()Landroid/widget/Editor$NewActionPopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$NewActionPopupWindow;->relocateNewActionPopupWindow(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->getNewActionPopupWindow()Landroid/widget/Editor$NewActionPopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$NewActionPopupWindow;->relocateNewActionPopupWindow(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->getNewActionPopupWindow()Landroid/widget/Editor$NewActionPopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$NewActionPopupWindow;->relocateNewActionPopupWindow(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hideNewActionPopupWindow()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hideNewActionPopupWindow()V

    goto :goto_0
.end method

.method public removeAllNewActionPopupHider()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->removeNewActionPopupHiderCallback()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->removeNewActionPopupHiderCallback()V

    :cond_1
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->am:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->am:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isUniversalSwitchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mEnableActionPopupWindow:Z

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "Editor"

    const-string/jumbo v1, "return SelectionModifierCursorController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)V

    goto :goto_0
.end method

.method public showNewActionPopup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->showNewActionPopupWindow(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->showNewActionPopupWindow(I)V

    goto :goto_0
.end method
