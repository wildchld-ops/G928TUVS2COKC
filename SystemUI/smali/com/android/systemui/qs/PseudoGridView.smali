.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mBottomSpacing:I

.field private mHorizontalSpacing:I

.field protected mNumColumns:I

.field private mSideSpacing:I

.field private mTopSpacing:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    sget-object v4, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mBottomSpacing:I

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getGridViewHeight()I
    .locals 9

    const/4 v8, 0x0

    iget v3, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    iget v7, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    if-le v7, v2, :cond_0

    move v3, v2

    :cond_0
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    add-int v7, v2, v3

    add-int/lit8 v7, v7, -0x1

    div-int v5, v7, v3

    const/4 v4, 0x0

    if-lez v2, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1
    iget v7, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v7, v4

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/qs/PseudoGridView;->mBottomSpacing:I

    add-int/2addr v6, v7

    return v6
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->isLayoutRtl()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v15, v2

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v16, v0

    div-int v10, v15, v16

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    if-le v15, v2, :cond_0

    move v7, v2

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_5

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    move/from16 v16, v0

    sub-int v13, v15, v16

    :goto_1
    const/4 v8, 0x0

    mul-int v11, v9, v7

    add-int v15, v11, v7

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v5, v11

    :goto_2
    if-ge v5, v3, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eqz v6, :cond_1

    sub-int/2addr v13, v12

    :cond_1
    add-int v15, v13, v12

    add-int v16, v14, v4

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v13, v15

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v15, v12

    add-int/2addr v13, v15

    goto :goto_3

    :cond_4
    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v14, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    if-nez v16, :cond_0

    new-instance v16, Ljava/lang/UnsupportedOperationException;

    const-string v17, "Needs a maximum width"

    invoke-direct/range {v16 .. v17}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v0, v5, :cond_1

    move v8, v5

    :cond_1
    add-int/lit8 v16, v8, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    sub-int v16, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    sub-int v16, v16, v17

    div-int v3, v16, v8

    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    add-int v16, v5, v8

    add-int/lit8 v16, v16, -0x1

    div-int v12, v16, v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_5

    mul-int v13, v11, v8

    add-int v16, v13, v8

    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v9, 0x0

    move v7, v13

    :goto_1
    if-ge v7, v6, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v7, v13

    :goto_2
    if-ge v7, v6, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v9, :cond_3

    invoke-virtual {v1, v4, v10}, Landroid/view/View;->measure(II)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    move/from16 v16, v0

    add-int v14, v14, v16

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mBottomSpacing:I

    move/from16 v16, v0

    add-int v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/qs/PseudoGridView;->setMeasuredDimension(II)V

    return-void
.end method
