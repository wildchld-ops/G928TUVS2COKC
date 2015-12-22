.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHandleType:I

    return-void
.end method

.method private isHandleViewScreenOut()Z
    .locals 4

    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    iput-boolean v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    invoke-direct {p0}, Landroid/widget/Editor$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    :cond_0
    iget-boolean v6, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eq v0, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    sub-float/2addr v5, v1

    iget v6, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    iget v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    :goto_1
    return v4

    :cond_1
    const/high16 v1, -0x41000000    # -0.5f

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public getNewActionPopupWindow()Landroid/widget/Editor$NewActionPopupWindow;
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$NewActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {v0, v1}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    return-object v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->calculateForSwitchingCursor()Z

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->invalidate()V

    :cond_0
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/Editor$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 4

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v3}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    iget-boolean v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionStartHandleView;->getHorizontalGravity(Z)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHorizontalGravity:I

    if-eqz v0, :cond_4

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/Editor$SelectionStartHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->recalHandleView()V

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->invalidate()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public updatePosition(FF)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_1

    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    :goto_0
    return-void

    :cond_1
    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    return-void
.end method
