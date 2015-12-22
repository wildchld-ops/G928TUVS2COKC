.class Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.super Landroid/widget/FrameLayout;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "HoverPopupContainer"


# instance fields
.field private final DEFAULT_BG_OUTLINE_THICKNESS:F

.field private final DEFAULT_BG_PADDING:F

.field private POPUPSTATE_CENTER:I

.field private POPUPSTATE_LEFT:I

.field private POPUPSTATE_RIGHT:I

.field private ani:Landroid/view/animation/Animation;

.field private isFHmoveAnimation:Z

.field private mAnimationAreaOffset:I

.field private mBGPaddingBottomPX:F

.field private mBGPaddingTopPX:F

.field private mFHPopCContext:Landroid/content/Context;

.field private mIsFHEnabled:Z

.field private mIsRingEnabled:Z

.field private mLeftLimit:I

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLineOverlappedHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field private mLineThickness:I

.field private mOldLineEndX:I

.field private mOldLineEndY:I

.field protected mOverTopBoundaryEnabled:Z

.field private mPickerHeightPX:F

.field private mPickerLineColor:I

.field private mPickerLineColorOnBottom:I

.field private mPickerOutlineThicknessPX:I

.field private mPickerSpaceColor:I

.field private mPickerWidthPX:F

.field private mPopupState:I

.field private mRightLimit:I

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field private mTopPickerOffset:I

.field private mTotalLeftLimit:F

.field private mTotalRightLimit:F

.field private misMovetoRight:Z

.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
    .locals 7

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndX:I

    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndY:I

    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->DEFAULT_BG_PADDING:F

    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->DEFAULT_BG_OUTLINE_THICKNESS:F

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->isFHmoveAnimation:Z

    iput-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->ani:Landroid/view/animation/Animation;

    iput-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mFHPopCContext:Landroid/content/Context;

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->misMovetoRight:Z

    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColor:I

    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColorOnBottom:I

    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTopPickerOffset:I

    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    iput-object p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mFHPopCContext:Landroid/content/Context;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x158

    const v2, -0xb88f7e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColor:I

    const/16 v1, 0x159

    const v2, -0xa57f6f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColorOnBottom:I

    const/16 v1, 0x15a

    const v2, -0xd0a99c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    # getter for: Landroid/widget/HoverPopupWindow;->TW:F
    invoke-static {p1}, Landroid/widget/HoverPopupWindow;->access$2100(Landroid/widget/HoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    # getter for: Landroid/widget/HoverPopupWindow;->H:F
    invoke-static {p1}, Landroid/widget/HoverPopupWindow;->access$2200(Landroid/widget/HoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 28

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    const v2, 0x1080384

    const v3, -0x866e57

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-ge v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2300(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_7

    const-string v2, "HoverPopupContainer"

    const-string v3, "HoverPopupContainer.draw(): mContentView is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-le v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    # setter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2502(Landroid/widget/HoverPopupWindow;F)F

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2602(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2702(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2802(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050278

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050279

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    const/16 v19, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :cond_a
    if-eqz v19, :cond_b

    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :goto_2
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v18, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    add-int v2, v2, v18

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    sub-int v2, v2, v18

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, v3, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v20, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_19

    if-gtz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v26

    iput v0, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v25

    iput v0, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v24

    iput v0, v2, Landroid/graphics/PointF;->x:F

    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1b

    if-gtz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v26

    iput v0, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v25

    iput v0, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v24

    iput v0, v2, Landroid/graphics/PointF;->x:F

    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3200(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3300(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3300(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int v16, v2, v3

    :cond_10
    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3400(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerXoffset:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3500(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    add-int v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3400(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    if-ge v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerXoffset:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3500(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    add-int v3, v3, v16

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    add-int/lit8 v2, v2, 0x1

    :goto_c
    div-int/lit8 v11, v2, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    sub-float v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    add-float v14, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    sub-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    sub-float v15, v2, v3

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3200(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3600(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_23

    const/16 v2, 0x15b

    const v3, -0xa29283

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    :goto_e
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->close()V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v23, Landroid/graphics/Path;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    rem-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    sub-float v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    add-float v14, v2, v3

    :cond_13
    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_a

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_b

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_b

    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    goto/16 :goto_c

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    add-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    add-float v15, v2, v3

    goto/16 :goto_d

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v12, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v14, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v13, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v15, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_d

    :cond_23
    const/16 v2, 0x15a

    const v3, -0xa29283

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    goto/16 :goto_e

    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColorOnBottom:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f
.end method

.method public getLineEndX()I
    .locals 1

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    return v0
.end method

.method public getLineOverlappedHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    return v0
.end method

.method public getLineStartY()I
    .locals 1

    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    return v0
.end method

.method protected pointInValidPaddingArea(II)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingBottom()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingTop()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingBottom()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFHGuideLineForCotainer(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    return-void
.end method

.method public setFHmoveAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->isFHmoveAnimation:Z

    return-void
.end method

.method public setFHmoveAnimationOffset(I)V
    .locals 3

    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer(): setFHmoveAnimationOffset: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer(): setFHmoveAnimationOffset: mAnimationAreaOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGuideLine(II)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setGuideLine(IIIIZZ)V
    .locals 0

    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    iput p3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    iput p4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    iput-boolean p5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    iput-boolean p6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    return-void
.end method

.method public setGuideLineEndPoint(II)V
    .locals 0

    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    return-void
.end method

.method public setOverTopForCotainer(Z)V
    .locals 3

    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: mOverTopBoundaryEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 0

    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTopPickerOffset:I

    return-void
.end method

.method public setPickerLimit(II)V
    .locals 0

    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    return-void
.end method

.method public setPopupState(I)V
    .locals 0

    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    return-void
.end method

.method public updateDecoration()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->invalidate()V

    return-void
.end method
