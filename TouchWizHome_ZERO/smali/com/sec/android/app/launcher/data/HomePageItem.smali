.class public Lcom/sec/android/app/launcher/data/HomePageItem;
.super Lcom/sec/android/app/launcher/data/PageItem;
.source "HomePageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/HomePageItem$1;
    }
.end annotation


# instance fields
.field private mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field private mItemViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/PageItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/HomePageItem;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/HomePageItem;->mItemViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    return-void
.end method

.method public static createLayout(Lcom/sec/android/app/launcher/data/PageItem;)Lcom/sec/daliviews/layouts/LayoutBase;
    .locals 18

    const/16 v17, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v2

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sget-object v6, Lcom/sec/android/app/launcher/data/HomePageItem$1;->$SwitchMap$com$sec$daliviews$layouts$LayoutBase$LayoutType:[I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutType()Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v5, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutOrientation()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingHorizontal()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingVertical()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getBufferSize()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutClipping()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getHorizontalScroll()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getVerticalScroll()Z

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v6, v2

    move v7, v3

    invoke-direct/range {v5 .. v16}, Lcom/sec/daliviews/layouts/GridLayout;-><init>(IIIIIIZZZZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(II)V

    move-object/from16 v17, v5

    :goto_0
    return-object v17

    :pswitch_0
    new-instance v17, Lcom/sec/daliviews/layouts/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutOrientation()I

    move-result v6

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lcom/sec/daliviews/layouts/LinearLayout;-><init>(I)V

    goto :goto_0

    :pswitch_1
    new-instance v17, Lcom/sec/daliviews/layouts/FrameLayout;

    invoke-direct/range {v17 .. v17}, Lcom/sec/daliviews/layouts/FrameLayout;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v17, Lcom/sec/daliviews/layouts/PageLayout;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Lcom/sec/daliviews/layouts/PageLayout;-><init>(II)V

    goto :goto_0

    :pswitch_3
    new-instance v17, Lcom/sec/daliviews/layouts/MagazineLayout;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Lcom/sec/daliviews/layouts/MagazineLayout;-><init>(II)V

    goto :goto_0

    :pswitch_4
    new-instance v17, Lcom/sec/daliviews/layouts/FixedLayout;

    invoke-direct/range {v17 .. v17}, Lcom/sec/daliviews/layouts/FixedLayout;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutOrientation()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingHorizontal()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingVertical()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getBufferSize()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutClipping()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getHorizontalScroll()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getVerticalScroll()Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/sec/daliviews/layouts/GridLayout;-><init>(IIIIIIZZZZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeHeight()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(II)V

    move-object/from16 v17, v1

    goto :goto_0

    :pswitch_6
    new-instance v4, Lcom/sec/daliviews/layouts/CardLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutOrientation()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingHorizontal()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingVertical()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getBufferSize()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutClipping()Z

    move-result v11

    move v5, v2

    move v6, v3

    invoke-direct/range {v4 .. v11}, Lcom/sec/daliviews/layouts/CardLayout;-><init>(IIIIIIZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeHeight()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/daliviews/layouts/CardLayout;->setCellSize(II)V

    move-object/from16 v17, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private createPageView()Lcom/sec/android/app/launcher/views/HomePageView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/launcher/views/HomePageView;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/views/HomePageView;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/HomePageItem;->populatePageView(Lcom/sec/android/app/launcher/views/HomePageView;)V

    return-object v0
.end method

.method private populatePageView(Lcom/sec/android/app/launcher/views/HomePageView;)V
    .locals 11

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    new-instance v9, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v9, v2, v2, v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/HomePageItem;->mItemViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/views/HomePageView;->setViewRecycler(Lcom/sec/daliviews/views/ViewRecycler;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPagePaddings()Landroid/graphics/Rect;

    move-result-object v8

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v10}, Lcom/sec/android/app/launcher/views/HomePageView;->setPadding(IIII)V

    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v1, v4, v2, v4}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    invoke-virtual {p1, v9}, Lcom/sec/android/app/launcher/views/HomePageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    invoke-static {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->createLayout(Lcom/sec/android/app/launcher/data/PageItem;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/views/HomePageView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getRearrangement()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/views/HomePageView;->setRearrangementAlgorithm(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->canDragAndDrop()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/launcher/views/HomePageView;->setCanAcceptDrop(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getContainerFilter()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setContainerTypeAndId(II)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v7

    new-instance v0, Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/HomePageItem;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getPageOrder()I

    move-result v1

    if-ne v7, v1, :cond_1

    move v4, v5

    :cond_1
    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;-><init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;Lcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/launcher/views/HomePageView;->setPagePresenter(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getEmptyPageTextState()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getEmptyPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setEmptyPage(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getContainerFilter()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setContainerTypeAndId(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getContainerFilter()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->getDbId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/launcher/views/HomePageView;->setContainerTypeAndId(II)V

    goto :goto_0
.end method


# virtual methods
.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/views/HomePageView;

    return v0
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->createPageView()Lcom/sec/android/app/launcher/views/HomePageView;

    move-result-object v0

    return-object v0
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/views/HomePageView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/launcher/views/HomePageView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/HomePageItem;->populatePageView(Lcom/sec/android/app/launcher/views/HomePageView;)V

    :cond_0
    return-void
.end method

.method public setHomePresenter(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/HomePageItem;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getViewRecycler()Lcom/sec/daliviews/views/ViewRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/HomePageItem;->mItemViewRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    return-void
.end method
