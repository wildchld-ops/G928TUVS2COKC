.class public Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;
.super Ljava/lang/Object;
.source "WorkspaceSpanCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$1;,
        Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;,
        Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;,
        Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;,
        Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WorkspaceSpanCalculator"


# instance fields
.field private final mCellCountX:I

.field private final mCellCountY:I

.field private final mDensity:F

.field private final mGedCellHeight:I

.field private final mGedCellWidth:I

.field private final mLandCellGapX:I

.field private final mLandCellGapY:I

.field private final mLandCellSizeX:I

.field private final mLandCellSizeY:I

.field private mPaddingDimens:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

.field private mPaddingZero:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

.field private mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPortCellGapX:I

.field private final mPortCellGapY:I

.field private final mPortCellSizeX:I

.field private final mPortCellSizeY:I

.field private mSpanCalcRoundDown:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

.field private mSpanCalcRoundUp:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

    invoke-direct {v5, v6, v6, v6, v6}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPaddingZero:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

    new-instance v5, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    invoke-direct {v5, v7}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;-><init>(Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$1;)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    new-instance v5, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    invoke-direct {v5, v7}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;-><init>(Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$1;)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mSpanCalcRoundDown:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a000d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v5, 0x7f0a000f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0a000e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v5, 0x7f0a000c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v5, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

    invoke-direct {v5, v1, v4, v3, v0}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

    const v5, 0x7f0c0015

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mCellCountX:I

    const v5, 0x7f0c0016

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mCellCountY:I

    const v5, 0x7f0a00ac

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellSizeX:I

    const v5, 0x7f0a00a8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellSizeY:I

    const v5, 0x7f0a00ab

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mLandCellSizeX:I

    const v5, 0x7f0a00a7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mLandCellSizeY:I

    const v5, 0x7f0a00a0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellGapX:I

    const v5, 0x7f0a00a4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellGapY:I

    const v5, 0x7f0a009f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mLandCellGapX:I

    const v5, 0x7f0a00a3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mLandCellGapY:I

    const v5, 0x7f0a0096

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mGedCellWidth:I

    const v5, 0x7f0a0095

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mGedCellHeight:I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mDensity:F

    return-void
.end method

.method private getMaxSpanForWidget(IIII[ILcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)[I
    .locals 19

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    :cond_0
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 p5, v0

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v17, p5, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aput v17, p5, v16

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v16, "WorkspaceSpanCalculator"

    const-string v17, "WorkspaceSpanCalculator::getMaxSpanForWidget() fragment is not created yet."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p5

    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    const-string v16, "WorkspaceSpanCalculator"

    const-string v17, "WorkspaceSpanCalculator::getMaxSpanForWidget() PagePresenter list is not created yet"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageMaxColumns()I

    move-result v5

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageMaxRows()I

    move-result v6

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/PageItem;->getPageLayoutWidth()I

    move-result v13

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/PageItem;->getPageLayoutHeight()I

    move-result v11

    div-int v3, v13, v5

    div-int v2, v11, v6

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingHorizontal()I

    move-result v9

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingVertical()I

    move-result v10

    sub-int v8, v3, v9

    sub-int v7, v2, v10

    move-object/from16 v0, p6

    move/from16 v1, p1

    invoke-interface {v0, v1, v8, v9}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v14

    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-interface {v0, v1, v7, v10}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v15

    const/16 v16, 0x0

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v17

    aput v17, p5, v16

    const/16 v16, 0x1

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v17

    aput v17, p5, v16

    const-string v16, "WorkspaceSpanCalculator"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "WorkspaceSpanCalculator::getMaxSpanForWidget() "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p7 .. p7}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "MaxSpan "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, p5, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, p5, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getSpanCount(III)I
    .locals 4

    add-int v1, p1, p3

    add-int v0, p2, p3

    add-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method private getSpanForWidget(IIIIZ)[I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x2

    new-array v5, v6, [I

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v1

    if-eqz p5, :cond_0

    iget v6, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mGedCellWidth:I

    iget v7, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mGedCellHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {p0, p1, v4, v8}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v2

    invoke-direct {p0, p2, v4, v8}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v5, v8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v5, v9

    :goto_0
    return-object v5

    :cond_0
    iget v6, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget v7, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellGapX:I

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v2

    iget v6, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget v7, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellGapY:I

    invoke-direct {p0, p2, v6, v7}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v5, v8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v5, v9

    goto :goto_0
.end method

.method private getSpanForWidget(IIII[ILcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I
    .locals 9

    if-eqz p5, :cond_0

    array-length v7, p5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    :cond_0
    const/4 v7, 0x2

    new-array p5, v7, [I

    :cond_1
    if-eqz p7, :cond_2

    iget v1, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mGedCellWidth:I

    iget v0, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mGedCellHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v7, 0x0

    invoke-interface {p6, p1, v4, v7}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v5

    const/4 v7, 0x0

    invoke-interface {p6, p2, v4, v7}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v6

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, p5, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, p5, v7

    :goto_0
    return-object p5

    :cond_2
    iget v7, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget v8, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellGapX:I

    invoke-interface {p6, p1, v7, v8}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v2

    iget v7, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget v8, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellGapY:I

    invoke-interface {p6, p2, v7, v8}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v3

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, p5, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, p5, v7

    goto :goto_0
.end method

.method private useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 7

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

    move-result-object v6

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v3, v6, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v6, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v3, v6, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v6, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    const/4 v5, 0x1

    move-object v0, p0

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanForWidget(IIIIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getPaddingForWidget(Landroid/content/ComponentName;)Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;
    .locals 7

    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPaddingZero:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_0
.end method

.method public getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 21

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v1, v0

    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    :cond_0
    const/4 v1, 0x4

    new-array v0, v1, [I

    move-object/from16 p2, v0

    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

    move-result-object v17

    move-object/from16 v0, p1

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v1, v4

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->right:I

    add-int v2, v1, v4

    move-object/from16 v0, p1

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v1, v4

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v3, v1, v4

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    move-object/from16 v1, p0

    move v4, v2

    move v5, v3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object p2

    const/4 v1, 0x2

    const/4 v4, -0x1

    aput v4, p2, v1

    const/4 v1, 0x3

    const/4 v4, -0x1

    aput v4, p2, v1

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v1, :cond_4

    move-object/from16 v16, p1

    check-cast v16, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getMaxResizeWidth()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getMaxResizeHeight()I

    move-result v18

    move-object/from16 v0, v17

    iget v1, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->right:I

    add-int/2addr v1, v4

    sub-int v2, v19, v1

    move-object/from16 v0, v17

    iget v1, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int/2addr v1, v4

    sub-int v3, v18, v1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_2

    int-to-float v1, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v1, v4

    float-to-int v3, v1

    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mSpanCalcRoundDown:Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    move-object/from16 v9, p0

    move v10, v2

    move v11, v3

    move v12, v2

    move v13, v3

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getMaxSpanForWidget(IIII[ILcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$SpanCountCalculator;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)[I

    move-result-object v20

    if-lez v19, :cond_3

    const v1, 0x7fffffff

    move/from16 v0, v19

    if-ge v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x0

    aget v5, v20, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p2, v1

    :cond_3
    if-lez v18, :cond_4

    const v1, 0x7fffffff

    move/from16 v0, v18

    if-ge v0, v1, :cond_4

    const/4 v1, 0x3

    const/4 v4, 0x1

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, v20, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p2, v1

    :cond_4
    return-object p2
.end method

.method public getSpanForSamsungWidget(IIII)[I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanForWidget(IIIIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 7

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;

    move-result-object v6

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v3, v6, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v6, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v3, v6, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v6, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v5

    move-object v0, p0

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanForWidget(IIIIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;II)V
    .locals 10

    iget v7, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget v6, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget v9, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mLandCellGapX:I

    iget v8, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mLandCellGapY:I

    mul-int v0, p2, v7

    add-int/lit8 v1, p2, -0x1

    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v4, v0

    mul-int v0, p3, v6

    add-int/lit8 v1, p3, -0x1

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v3, v0

    iget v7, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget v6, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget v9, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellGapX:I

    iget v8, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mPortCellGapY:I

    mul-int v0, p2, v7

    add-int/lit8 v1, p2, -0x1

    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v2, v0

    mul-int v0, p3, v6

    add-int/lit8 v1, p3, -0x1

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v5, v0

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void
.end method
