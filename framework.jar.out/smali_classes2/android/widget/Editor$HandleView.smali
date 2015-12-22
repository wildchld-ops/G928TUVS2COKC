.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_INSERT:I = 0x3

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field protected final mContainer:Landroid/widget/PopupWindow;

.field protected mCurCursorPosTop:Z

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field public mHandleType:I

.field private mHighlightRect:[I

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private mInitRawY:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMinSize:I

.field private mNewActionPopupHider:Ljava/lang/Runnable;

.field private mNewActionPopupShower:Ljava/lang/Runnable;

.field protected mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

.field private mNumberPreviousOffsets:I

.field protected mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousHighlightRect:[I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbFlipCursor:Z

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    new-array v1, v3, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mbFlipCursor:Z

    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mCurCursorPosTop:Z

    new-instance v1, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->recalHandleView()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v0

    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    :cond_1
    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;FF)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    return-void
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected getCursorOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected getHorizontalOffset()I
    .locals 4

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    :goto_0
    return v1

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    sub-int v1, v2, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeMessage()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    :cond_1
    return-void
.end method

.method hideNewActionPopupWindow()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    :cond_0
    return-void
.end method

.method hideNewActionPopupWindowAfterDelay()V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->removeNewActionPopupHiderCallback()V

    goto :goto_0
.end method

.method public initPreviousOffset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    return-void
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideNewActionPopupWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onHandleMoved()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeMessage()V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideNewActionPopupWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v12, 0x1

    return v12

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v12

    invoke-direct {p0, v12}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iput v12, p0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iput v12, p0, Landroid/widget/Editor$HandleView;->mInitPositionY:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v12

    iput v12, p0, Landroid/widget/Editor$HandleView;->mInitRawY:F

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v12}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v12

    iput v12, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v12

    iput v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v9

    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v13, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v13, v13

    sub-float v7, v12, v13

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v12, v12

    sub-float v12, v9, v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v13, v13

    sub-float v0, v12, v13

    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v12, v7, v12

    if-gez v12, :cond_3

    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_1
    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v12, v12

    add-float/2addr v12, v3

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v12, v8, v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v13

    int-to-float v13, v13

    add-float v1, v12, v13

    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v12, v9, v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v12, v13

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v10

    iget v12, v10, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v13, p0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    int-to-float v13, v13

    add-float v11, v12, v13

    sub-float v12, v8, v11

    iget v13, v10, Landroid/graphics/PointF;->x:F

    div-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v13

    int-to-float v13, v13

    add-float v1, v12, v13

    :cond_1
    iget v12, v10, Landroid/graphics/PointF;->y:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_2

    iget v12, p0, Landroid/widget/Editor$HandleView;->mInitRawY:F

    sub-float v12, v9, v12

    iget v13, v10, Landroid/graphics/PointF;->y:F

    div-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mInitPositionY:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v12, v13

    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    :cond_3
    cmpg-float v12, v0, v7

    if-gez v12, :cond_4

    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1

    :cond_4
    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v12}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->refreshForSwitchingCursor()Z

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    iget-object v13, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    if-le v12, v13, :cond_5

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/Spannable;

    iget-object v13, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    iget-object v14, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_5
    iget v12, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->recalHandleView()V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v12}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v5, v12, v13

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v12}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v6, v12, v13

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-virtual {v12, v5, v6, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_6
    :goto_2
    iget v12, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v12}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v12}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v12}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v12

    if-eqz v12, :cond_0

    goto/16 :goto_0

    :cond_7
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v13, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/Editor$HandleView;->showNewActionPopupWindow(I)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a

    move v2, v6

    :goto_1
    iget v8, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    if-ne v8, v6, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_2
    if-eqz v2, :cond_2

    const/high16 v8, -0x40800000    # -1.0f

    mul-float/2addr v0, v8

    :cond_2
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v3, v1

    :cond_3
    iget v8, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v8, :cond_c

    move v5, v6

    :goto_3
    if-nez v5, :cond_6

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v9, v9

    aput v9, v8, v7

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    aput v9, v8, v6

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v8, v8, v7

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v9, v9, v7

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v8, v8, v6

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v9, v9, v6

    if-eq v8, v9, :cond_5

    :cond_4
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v8, v8, v7

    int-to-float v8, v8

    add-float/2addr v8, v0

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mCursorShiftOffset:I
    invoke-static {v9}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v8, v8, v6

    iput v8, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v8, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    :cond_5
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v9, v9, v7

    aput v9, v8, v7

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v8, v8, v6

    aput v8, v7, v6

    :cond_6
    if-nez v5, :cond_7

    if-eqz p2, :cond_9

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    :cond_8
    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    add-float/2addr v7, v0

    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mCursorShiftOffset:I
    invoke-static {v8}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget v7, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v7, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_9
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto/16 :goto_0

    :cond_a
    move v2, v7

    goto/16 :goto_1

    :cond_b
    const/high16 v0, -0x41000000    # -0.5f

    goto/16 :goto_2

    :cond_c
    move v5, v7

    goto/16 :goto_3
.end method

.method public recalHandleView()V
    .locals 3

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method removeNewActionPopupHiderCallback()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mActionPopupMode:Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showNewActionPopupWindow(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$NewActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {v0, v1}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->show()V

    return-void
.end method

.method protected updateDrawable()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_6

    :cond_0
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->removeAllNewActionPopupHider()V

    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v0, p1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v1, p2, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_4
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->relocateNewActionPopupWindow()V

    :cond_5
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mActionPopupMode:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->relocateActionPopupWindow()V

    :cond_6
    return-void

    :cond_7
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
