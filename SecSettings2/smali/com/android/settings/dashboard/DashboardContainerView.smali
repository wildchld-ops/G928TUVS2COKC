.class public Lcom/android/settings/dashboard/DashboardContainerView;
.super Landroid/view/ViewGroup;
.source "DashboardContainerView.java"


# instance fields
.field private mCellGapX:F

.field private mCellGapY:F

.field private mNumColumns:I

.field private mNumRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    const v1, 0x7f0d00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    return-void
.end method


# virtual methods
.method public SetNumColumns(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildCount()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->isLayoutRtl()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingTop()I

    move-result v19

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v20, v0

    rem-int v10, v12, v20

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getColumnSpan()I

    move-result v11

    iget v9, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v20, v0

    div-int v16, v12, v20

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/DashboardTileView;->setDividerVisibility(Z)V

    add-int v20, v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v18

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    add-int/lit8 v16, v16, 0x1

    :cond_1
    if-eqz v14, :cond_2

    sub-int v20, v17, v18

    sub-int v6, v20, v9

    :goto_2
    add-int v7, v6, v9

    move/from16 v8, v19

    add-int v4, v8, v5

    invoke-virtual {v3, v6, v8, v7, v4}, Lcom/android/settings/dashboard/DashboardTileView;->layout(IIII)V

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getColumnSpan()I

    move-result v20

    add-int v12, v12, v20

    add-int/lit8 v20, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_1

    :cond_2
    move/from16 v6, v18

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v18

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingLeft()I

    move-result v15

    sub-int v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v3, v15

    int-to-float v15, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/settings/dashboard/DashboardTileView;

    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getColumnSpan()I

    move-result v6

    int-to-float v15, v6

    mul-float/2addr v15, v5

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v15, 0x0

    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildMeasureSpec(III)I

    move-result v12

    const/4 v15, 0x0

    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual {v13, v12, v11}, Lcom/android/settings/dashboard/DashboardTileView;->measure(II)V

    if-gtz v4, :cond_1

    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getMeasuredHeight()I

    move-result v4

    :cond_1
    iput v4, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v6

    goto :goto_1

    :cond_2
    int-to-float v15, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    mul-int/2addr v15, v4

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingTop()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingBottom()I

    move-result v16

    add-int v10, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/android/settings/dashboard/DashboardContainerView;->setMeasuredDimension(II)V

    return-void
.end method
