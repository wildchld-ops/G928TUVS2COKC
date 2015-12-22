.class public Lcom/sec/daliviews/layouts/GridLayout;
.super Lcom/sec/daliviews/layouts/LayoutBase;
.source "GridLayout.java"


# static fields
.field public static final NUM_SCROLLEFFECTS:I = 0x2

.field public static final SCROLLEFFECT_VERTDELAY:I = 0x0

.field public static final SCROLLEFFECT_VERTTILT:I = 0x1

.field public static final SCROLL_DOWN:I = 0x1

.field public static final SCROLL_LEFT:I = 0x2

.field public static final SCROLL_RIGHT:I = 0x3

.field public static final SCROLL_UP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBufferSize:I

.field private mCellSizeX:I

.field private mCellSizeY:I

.field private mClipping:Z

.field private mColCount:I

.field private mEnableSwap:Z

.field private mFlow:Z

.field private mHorizontalScroll:Z

.field private mHorizontalSpacing:I

.field private mOrientation:I

.field private mRowCount:I

.field private mShrinkToContent:Z

.field private mVerticalScroll:Z

.field private mVerticalSpacing:I

.field mView:Lcom/sec/daliviews/views/ClippedContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/layouts/GridLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 13

    invoke-direct {p0}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    iget v6, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    iget-boolean v7, p0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    iget-boolean v8, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    iget-boolean v9, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    iget-boolean v10, p0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    iget-boolean v11, p0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    iget-boolean v12, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v12}, Lcom/sec/daliviews/layouts/GridLayout;->initGridLayoutParameters(IIIIIIZZZZZZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIZ)V
    .locals 13

    invoke-direct {p0}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    iget-boolean v8, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    iget-boolean v9, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    iget-boolean v10, p0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    iget-boolean v11, p0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    iget-boolean v12, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v12}, Lcom/sec/daliviews/layouts/GridLayout;->initGridLayoutParameters(IIIIIIZZZZZZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollable(ZZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIZZZZZ)V
    .locals 13

    invoke-direct {p0}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    iget-boolean v12, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/sec/daliviews/layouts/GridLayout;->initGridLayoutParameters(IIIIIIZZZZZZ)V

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 13

    invoke-direct {p0}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    iget v6, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    iget-boolean v8, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    iget-boolean v9, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    iget-boolean v10, p0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    iget-boolean v11, p0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    iget-boolean v12, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v12}, Lcom/sec/daliviews/layouts/GridLayout;->initGridLayoutParameters(IIIIIIZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18

    invoke-direct/range {p0 .. p2}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    sget-object v3, Lcom/sec/daliviews/R$styleable;->GridLayout:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_android_rowCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_android_columnCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_cellSizeX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_cellSizeY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_android_orientation:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_spacingHorizontal:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_spacingVertical:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_bufferSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_clipping:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_verticalScroll:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_horizontalScroll:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_flow:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_shrinkToContent:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_enableSwap:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    move/from16 v17, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/sec/daliviews/layouts/GridLayout;->initParams(JIIIIIIZZZZZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(JII)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(ZZZZFIIIIIIZZZZZ)V
    .locals 13

    invoke-direct/range {p0 .. p5}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>(ZZZZF)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    iget-boolean v12, p0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    move/from16 v9, p14

    move/from16 v10, p15

    move/from16 v11, p16

    invoke-direct/range {v0 .. v12}, Lcom/sec/daliviews/layouts/GridLayout;->initGridLayoutParameters(IIIIIIZZZZZZ)V

    return-void
.end method

.method private native activateScrollEffect(JZ)V
.end method

.method private native getClippedContainerView(J)Lcom/sec/daliviews/views/ClippedContainerView;
.end method

.method private native getFirstVisibleRow(J)I
.end method

.method private native getLastRow(J)I
.end method

.method private native getLastVisibleRow(J)I
.end method

.method private native getTotalNumRows(J)I
.end method

.method private initGridLayoutParameters(IIIIIIZZZZZZ)V
    .locals 18

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    move/from16 v0, p10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    move/from16 v0, p11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/daliviews/layouts/GridLayout;->mOrientation:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalSpacing:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalSpacing:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/daliviews/layouts/GridLayout;->mClipping:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/daliviews/layouts/GridLayout;->mEnableSwap:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    move/from16 v17, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/sec/daliviews/layouts/GridLayout;->initParams(JIIIIIIZZZZZZ)V

    return-void
.end method

.method private native initParams(JIIIIIIZZZZZZ)V
.end method

.method private native scrollToTop(JF)V
.end method

.method private native setBufferSize(JI)V
.end method

.method private native setCellSize(JII)V
.end method

.method private native setFlickDuration(JF)V
.end method

.method private native setGridSize(JII)V
.end method

.method private native setHorizontalSpacing(JI)V
.end method

.method private native setMaxFlickSpeed(JF)V
.end method

.method private native setScrollBarImage(JLjava/lang/String;)V
.end method

.method private native setScrollBarVisible(JZ)V
.end method

.method private native setScrollable(JZZ)V
.end method

.method private native setSnapDuration(JF)V
.end method

.method private native setVerticalSpacing(JI)V
.end method

.method private native triggerScrollEffectChange(JI)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public createClippedContainer()J
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mView:Lcom/sec/daliviews/views/ClippedContainerView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/ClippedContainerView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ClippedContainerView;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mView:Lcom/sec/daliviews/views/ClippedContainerView;

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mView:Lcom/sec/daliviews/views/ClippedContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ClippedContainerView;->getPeer()J

    move-result-wide v0

    return-wide v0
.end method

.method public findFirstAvailablePosition(Lcom/sec/daliviews/views/Item;)Lcom/sec/daliviews/layouts/LayoutPosition;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPeerAndCreateIfNeeded()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/daliviews/layouts/GridLayout;->findFirstAvailablePosition(JJ)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sec/daliviews/layouts/GridLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java findFirstAvailablePosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/daliviews/layouts/LayoutPosition;

    aget v2, v0, v6

    aget v3, v0, v7

    invoke-direct {v1, v2, v3}, Lcom/sec/daliviews/layouts/LayoutPosition;-><init>(II)V

    goto :goto_0
.end method

.method protected native findFirstAvailablePosition(JJ)[I
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    return v0
.end method

.method public getClippedContainerView()Lcom/sec/daliviews/views/ClippedContainerView;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->getClippedContainerView(J)Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    return v0
.end method

.method public getFirstVisibleRow()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->getFirstVisibleRow(J)I

    move-result v0

    return v0
.end method

.method public getLastRow()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->getLastRow(J)I

    move-result v0

    return v0
.end method

.method public getLastVisibleRow()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->getLastVisibleRow(J)I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    return v0
.end method

.method public getRowsLength()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->getTotalNumRows(J)I

    move-result v0

    return v0
.end method

.method public isFlow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mFlow:Z

    return v0
.end method

.method public isHorizontalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mHorizontalScroll:Z

    return v0
.end method

.method public isShrinkToContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mShrinkToContent:Z

    return v0
.end method

.method public isVerticalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mVerticalScroll:Z

    return v0
.end method

.method public scrollContinuously(IF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(JIF)V

    return-void
.end method

.method public native scrollContinuously(JIF)V
.end method

.method public scrollContinuouslyBySize(IFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(JIFF)V

    return-void
.end method

.method public native scrollContinuouslyBySize(JIFF)V
.end method

.method public scrollContinuouslyClipSize(IF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyClipSize(JIF)V

    return-void
.end method

.method public native scrollContinuouslyClipSize(JIF)V
.end method

.method public scrollToTop(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->scrollToTop(JF)V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 2

    iget v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/daliviews/layouts/GridLayout;->mBufferSize:I

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->setBufferSize(JI)V

    :cond_0
    return-void
.end method

.method public setCellSize(II)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeX:I

    iput p2, p0, Lcom/sec/daliviews/layouts/GridLayout;->mCellSizeY:I

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(JII)V

    :cond_0
    return-void
.end method

.method public setFlickDuration(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->setFlickDuration(JF)V

    return-void
.end method

.method public setGridSize(II)V
    .locals 2

    iget v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/sec/daliviews/layouts/GridLayout;->mRowCount:I

    iput p2, p0, Lcom/sec/daliviews/layouts/GridLayout;->mColCount:I

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/layouts/GridLayout;->setGridSize(JII)V

    :cond_1
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(JI)V

    :cond_0
    return-void
.end method

.method public setScrollBarImage(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollBarImage(JLjava/lang/String;)V

    return-void
.end method

.method public setScrollBarVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollBarVisible(JZ)V

    return-void
.end method

.method public setScrollEffect(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->triggerScrollEffectChange(JI)V

    return-void
.end method

.method public setScrollable(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/layouts/GridLayout;->setScrollable(JZZ)V

    return-void
.end method

.method public setSnapDuration(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->setSnapDuration(JF)V

    return-void
.end method

.method public setVerticalScrollEffect(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->activateScrollEffect(JZ)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(JI)V

    :cond_0
    return-void
.end method

.method public stopScrolling()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/GridLayout;->getPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/layouts/GridLayout;->stopScrolling(J)V

    return-void
.end method

.method public native stopScrolling(J)V
.end method
