.class public Lcom/android/internal/app/AlertController$ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 23

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildCount()I

    move-result v16

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getMeasuredWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingRight()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingLeft()I

    move-result v21

    sub-int v19, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getMeasuredHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getPaddingBottom()I

    move-result v21

    sub-int v17, v20, v21

    const/4 v8, 0x0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    instance-of v0, v14, Landroid/widget/Space;

    move/from16 v20, v0

    if-nez v20, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050119

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050118

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105011a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105011b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105011c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050114

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050115

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/16 v20, 0x2

    move/from16 v0, v20

    if-le v8, v0, :cond_3

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    instance-of v0, v14, Landroid/widget/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    invoke-virtual {v14, v10, v11, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v20, v14

    check-cast v20, Landroid/widget/Button;

    const/16 v21, 0x0

    int-to-float v0, v13

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/Button;->setTextSize(IF)V

    const/high16 v20, -0x80000000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/high16 v21, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_2
    sub-int v20, v9, v10

    add-int v20, v20, v7

    const/16 v21, 0x0

    sub-int v22, v9, v10

    add-int v22, v22, v7

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setPadding(IIII)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    instance-of v0, v14, Landroid/widget/Button;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    invoke-virtual {v14, v9, v11, v9, v11}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v20, v14

    check-cast v20, Landroid/widget/Button;

    const/16 v21, 0x0

    int-to-float v0, v12

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/Button;->setTextSize(IF)V

    const/high16 v20, -0x80000000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/high16 v21, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1, v7, v6}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setPadding(IIII)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_5
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    instance-of v0, v14, Landroid/widget/Space;

    move/from16 v20, v0

    if-nez v20, :cond_6

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v5, v5, v20

    const/high16 v20, -0x80000000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/high16 v21, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v4, v4, v20

    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_7
    if-lt v5, v4, :cond_8

    move/from16 v0, v19

    if-ge v0, v4, :cond_a

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    :cond_9
    :goto_4
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->getOrientation()I

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$ButtonBarLayout;->setOrientation(I)V

    goto :goto_4
.end method
