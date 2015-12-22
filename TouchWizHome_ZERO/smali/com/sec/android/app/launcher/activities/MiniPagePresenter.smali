.class public Lcom/sec/android/app/launcher/activities/MiniPagePresenter;
.super Lcom/sec/android/app/launcher/activities/PresenterBase;
.source "MiniPagePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;


# static fields
.field private static final MINIPAGE_ANIMATION_DURATION:F = 0.25f

.field private static final MINIPAGE_FADEOUT_SCALE:F = 0.5f

.field private static final mNewPageMockupEnabled:Z


# instance fields
.field private mActiveItemImageResId:I

.field private mAnimation:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field private mBackgroundImageResId:I

.field private mContainer:Lcom/sec/daliviews/views/ContainerView;

.field private mFullScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mHalfScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field private mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

.field private mNewPageBackgroundImageResId:I

.field private mNewPageMockup:Lcom/sec/daliviews/views/MiniPageView;

.field private mNewPageMockupItem:Lcom/sec/daliviews/views/SimpleItem;

.field private final mOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPassiveItemImageResId:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;IIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/PresenterBase;-><init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/MiniPageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockupItem:Lcom/sec/daliviews/views/SimpleItem;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mAnimation:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHalfScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mFullScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    iput p2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mBackgroundImageResId:I

    iput p3, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageBackgroundImageResId:I

    iput p4, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mActiveItemImageResId:I

    iput p5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mPassiveItemImageResId:I

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->initialise()V

    return-void
.end method

.method private initialise()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageItem()Lcom/sec/android/app/launcher/data/PageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->setupContainerView()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->setupMiniPages()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->setupAnimations()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v3, v5, v5}, Lcom/sec/daliviews/views/ContainerView;->setScale(FF)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    return-void
.end method

.method private setupAnimations()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-direct {v2, v4}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mAnimation:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mFullScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHalfScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;

    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v2, v3, v3, v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    invoke-direct {v0, v2, v5, v4, v7}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mFullScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    new-instance v1, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;

    new-instance v2, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v2, v6, v6, v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    invoke-direct {v1, v2, v5, v4, v7}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHalfScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V

    return-void
.end method

.method private setupContainerView()V
    .locals 21

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v4, v17

    new-instance v2, Lcom/sec/daliviews/layouts/MiniPageLayout;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const v6, 0x7f0a015f

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0a015f

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/daliviews/layouts/MiniPageLayout;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    const v2, 0x7f0a0159

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v2, 0x7f0a0158

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v2, 0x7f0a015d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v2, 0x7f0a015c

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0a015e

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v14, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    int-to-float v6, v13

    int-to-float v7, v12

    move/from16 v0, v16

    int-to-float v8, v0

    int-to-float v9, v15

    invoke-virtual {v14}, Landroid/util/TypedValue;->getFloat()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Lcom/sec/daliviews/layouts/MiniPageLayout;->setMiniPageProperties(FFFFFLcom/sec/daliviews/layouts/PageLayout;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/layouts/MiniPageLayout;->setAnimatePositioning(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/layouts/MiniPageLayout;->setAnimateResizing(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/layouts/MiniPageLayout;->setAnimateAddingView(Z)V

    mul-int v2, v16, v4

    const v3, 0x7f0a015f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/lit8 v5, v17, -0x1

    mul-int/2addr v3, v5

    add-int v20, v2, v3

    new-instance v2, Lcom/sec/daliviews/views/ContainerView;

    invoke-direct {v2}, Lcom/sec/daliviews/views/ContainerView;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setRearrangementAlgorithm(I)V

    new-instance v18, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    const/16 v2, 0x51

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1, v15, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>(III)V

    const v2, 0x7f0a015a

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    const v5, 0x7f0a015a

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerViewBase;->getHeight()I

    move-result v6

    const v7, 0x7f0a015b

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    return-void
.end method

.method private setupMiniPages()V
    .locals 15

    const/4 v14, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v2, 0x7f0a0159

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v2, 0x7f0a0158

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/launcher/activities/PagePresenter;

    new-instance v1, Lcom/sec/daliviews/views/MiniPageView;

    invoke-direct {v1}, Lcom/sec/daliviews/views/MiniPageView;-><init>()V

    invoke-virtual {v1, v10}, Lcom/sec/daliviews/views/MiniPageView;->setIndex(I)V

    invoke-virtual {v1, v14}, Lcom/sec/daliviews/views/MiniPageView;->setCanAcceptDrop(Z)V

    invoke-virtual {v1, v14}, Lcom/sec/daliviews/views/MiniPageView;->setSensitive(Z)V

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    int-to-long v2, v10

    iget v4, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mBackgroundImageResId:I

    invoke-static {v4}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageBackgroundImageResId:I

    invoke-static {v5}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mActiveItemImageResId:I

    invoke-static {v6}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mPassiveItemImageResId:I

    invoke-static {v7}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/views/PageView;->initialiseMiniPageView(Lcom/sec/daliviews/views/MiniPageView;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v1, v9, v8}, Lcom/sec/daliviews/views/MiniPageView;->setSize(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupNewPageMockup()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/sec/daliviews/views/MiniPageView;

    invoke-direct {v1}, Lcom/sec/daliviews/views/MiniPageView;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/MiniPageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/MiniPageView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/MiniPageView;->setIndex(I)V

    new-instance v1, Lcom/sec/daliviews/views/SimpleItem;

    invoke-direct {v1}, Lcom/sec/daliviews/views/SimpleItem;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockupItem:Lcom/sec/daliviews/views/SimpleItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockupItem:Lcom/sec/daliviews/views/SimpleItem;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/MiniPageView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/SimpleItem;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockupItem:Lcom/sec/daliviews/views/SimpleItem;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/SimpleItem;->setCellX(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockupItem:Lcom/sec/daliviews/views/SimpleItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/SimpleItem;->setCellY(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockupItem:Lcom/sec/daliviews/views/SimpleItem;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/SimpleItem;->setSpanX(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockupItem:Lcom/sec/daliviews/views/SimpleItem;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/SimpleItem;->setSpanY(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockupItem:Lcom/sec/daliviews/views/SimpleItem;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/SimpleItem;->setPos(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/MiniPageView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/MiniPageView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/MiniPageView;->setSensitive(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/MiniPageView;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/MiniPageView;->setCanAcceptDrop(Z)V

    return-void
.end method


# virtual methods
.method public addMiniPage(Lcom/sec/daliviews/views/PageView;Z)V
    .locals 13

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->adjustContainer(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-instance v1, Lcom/sec/daliviews/views/MiniPageView;

    invoke-direct {v1}, Lcom/sec/daliviews/views/MiniPageView;-><init>()V

    int-to-long v2, v10

    iget v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mBackgroundImageResId:I

    invoke-static {v0}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageBackgroundImageResId:I

    invoke-static {v0}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mActiveItemImageResId:I

    invoke-static {v0}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v6

    iget v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mPassiveItemImageResId:I

    invoke-static {v0}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/views/PageView;->initialiseMiniPageView(Lcom/sec/daliviews/views/MiniPageView;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/MiniPageView;->setCanAcceptDrop(Z)V

    invoke-virtual {v1, v12}, Lcom/sec/daliviews/views/MiniPageView;->setSensitive(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v0, 0x7f0a0159

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v0, 0x7f0a0158

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v1, v9, v8}, Lcom/sec/daliviews/views/MiniPageView;->setSize(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->buildIndices()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageRootView()Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PageViewContainer;->updateMiniPageItems()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->layoutMiniPages()V

    return-void
.end method

.method public adjustContainer(I)V
    .locals 11

    const v8, 0x7f0a015a

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v6

    const v7, 0x7f0a015d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v7, p1

    add-int/2addr v6, v7

    const v7, 0x7f0a015f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v7, p1

    add-int v5, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/MiniPageLayout;->getRowCount()I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/MiniPageLayout;->getColumnCount()I

    move-result v6

    add-int v0, v6, p1

    new-instance v2, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    const/16 v6, 0x51

    invoke-direct {v2, v5, v1, v6}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/daliviews/views/ContainerViewBase;->getHeight()I

    move-result v9

    const v10, 0x7f0a015b

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v2}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mLayout:Lcom/sec/daliviews/layouts/MiniPageLayout;

    invoke-virtual {v6, v3, v0}, Lcom/sec/daliviews/layouts/MiniPageLayout;->setGridSize(II)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6, v5, v1}, Lcom/sec/daliviews/views/ContainerView;->setSize(II)V

    return-void
.end method

.method public buildIndices()V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PageView;->hasMiniPageView()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/PageView;->getMiniPage()Lcom/sec/daliviews/views/MiniPageView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/daliviews/views/MiniPageView;->setIndex(I)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public changeMiniPage(I)V
    .locals 10

    const/4 v9, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0159

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v8, 0x7f0a0158

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageView;->getMiniPage()Lcom/sec/daliviews/views/MiniPageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/daliviews/views/MiniPageView;->getIndex()I

    move-result v4

    new-instance v3, Lcom/sec/daliviews/views/MiniPageView;

    invoke-direct {v3}, Lcom/sec/daliviews/views/MiniPageView;-><init>()V

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/MiniPageView;->setIndex(I)V

    invoke-virtual {v3, v9}, Lcom/sec/daliviews/views/MiniPageView;->setCanAcceptDrop(Z)V

    invoke-virtual {v3, v9}, Lcom/sec/daliviews/views/MiniPageView;->setSensitive(Z)V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v8, v4}, Lcom/sec/daliviews/views/ContainerView;->deleteView(I)V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v8, v4, v3}, Lcom/sec/daliviews/views/ContainerView;->insertView(ILcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {v3, v1, v0}, Lcom/sec/daliviews/views/MiniPageView;->setSize(II)V

    return-void
.end method

.method public deleteMiniPage(Lcom/sec/daliviews/views/PageView;)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->adjustContainer(I)V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/PageView;->getMiniPage()Lcom/sec/daliviews/views/MiniPageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ContainerView;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->buildIndices()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageRootView()Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageViewContainer;->updateMiniPageItems()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->layoutMiniPages()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/MiniPageView;->destroy()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mAnimation:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mAnimation:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mFullScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mFullScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHalfScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHalfScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_2
    return-void
.end method

.method public getContainer()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public layoutMiniPages()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    return-void
.end method

.method public onDragEnd()V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(Z)V

    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemUpdateCompleted()V
    .locals 0

    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public setAccessibilityMode(Z)V
    .locals 0

    return-void
.end method

.method public setImages(IIII)V
    .locals 9

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    iput p1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mBackgroundImageResId:I

    iput p2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mNewPageBackgroundImageResId:I

    iput p3, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mActiveItemImageResId:I

    iput p4, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mPassiveItemImageResId:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v6

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getMiniPage()Lcom/sec/daliviews/views/MiniPageView;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p4}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/sec/daliviews/views/MiniPageView;->setImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startHideAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x4

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mAnimation:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHalfScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mAnimation:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    return-void
.end method

.method public startShowAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibilityAnimated(IF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mAnimation:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mContainer:Lcom/sec/daliviews/views/ContainerView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mFullScaleAnimationSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mAnimation:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    return-void
.end method

.method public switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->startShowAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->RESIZE_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->startHideAnimation()V

    goto :goto_0
.end method

.method public updateImages()V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v6

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->mOrders:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/PageView;->getMiniPage()Lcom/sec/daliviews/views/MiniPageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/MiniPageView;->updateImages()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
