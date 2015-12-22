.class public Lcom/sec/android/app/launcher/activities/EventPagePresenter;
.super Lcom/sec/android/app/launcher/activities/PagePresenter;
.source "EventPagePresenter.java"


# instance fields
.field public mEventIndicatorImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;Lcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V
    .locals 4

    const/4 v3, 0x4

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/launcher/activities/PagePresenter;-><init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;Lcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->mEventIndicatorImage:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v2, v3, v3}, Lcom/sec/android/app/launcher/data/HomePageItem;->setGridSize(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/daliviews/layouts/GridLayout;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sec/daliviews/layouts/GridLayout;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/GridLayout;->isVerticalScroll()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/daliviews/layouts/GridLayout;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSizeWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSizeHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/daliviews/layouts/GridLayout;->setCellSize(II)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSpacingHorizontal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setHorizontalSpacing(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->mPageItem:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomePageItem;->getCellSpacingVertical()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/layouts/GridLayout;->setVerticalSpacing(I)V

    :cond_0
    return-void
.end method

.method private setEventPageIndicator()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->getEventPageIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->mEventIndicatorImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public restorePage(Z)V
    .locals 0

    return-void
.end method

.method public setAsDefaultHome(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setAsDefaultHome(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->mEventIndicatorImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->setEventPageIndicator()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/EventPagePresenter;->mEventIndicatorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
