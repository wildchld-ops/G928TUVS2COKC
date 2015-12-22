.class Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/PageViewContainer$OnNormalModeSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePresenterNormalModeSwitchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;-><init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    return-void
.end method


# virtual methods
.method public onModeChangeToNormalComplete()V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v6

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->buildPageReorderingIndices()V
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$700(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mOldMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v6

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v6, v8, :cond_c

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v0, v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$900(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v6

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    add-int/lit8 v8, v0, -0x1

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I
    invoke-static {v6, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$902(Lcom/sec/android/app/launcher/activities/HomePresenter;I)I

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/daliviews/layouts/PageLayout;->forceFirstVisibleColumn(I)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/layouts/PageLayout;->setOnPageChangeListener(Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/PageLayout;->getOnPageChangeListener()Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    move-result-object v7

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomePageChangeListener:Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;
    invoke-static {v6, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1302(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;)Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->startHideAnimation()V

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedToCreateNewPage:Z
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageItem:Lcom/sec/android/app/launcher/data/LauncherItem;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->LAST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    invoke-virtual {v6, v5, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->newPage(Ljava/util/List;Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;)Lcom/sec/daliviews/views/PageView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mNeedToCreateNewPage:Z
    invoke-static {v6, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1502(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v7, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageItem:Lcom/sec/android/app/launcher/data/LauncherItem;
    invoke-static {v6, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1602(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/LauncherItem;)Lcom/sec/android/app/launcher/data/LauncherItem;

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1700(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v6

    if-le v6, v12, :cond_6

    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # operator++ for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1708(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1700(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mInvalidDropPageFlipDuration:F
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1800(Lcom/sec/android/app/launcher/activities/HomePresenter;)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMoveOnInvalidDrop:I
    invoke-static {v6, v12}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1702(Lcom/sec/android/app/launcher/activities/HomePresenter;I)I

    :cond_6
    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageToMove:I
    invoke-static {v6, v12}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$902(Lcom/sec/android/app/launcher/activities/HomePresenter;I)I

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->RestoreScrollEffect()V
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1900(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z
    invoke-static {v6, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPendingSwitchToNormalMode:Z
    invoke-static {v6, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v6, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$602(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PageViewContainer;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addUpdateContentDescription()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/views/PageViewContainer;->getDefaultPageIndex()I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v6

    if-lez v6, :cond_8

    if-eq v2, v4, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getEventThemeManager()Lcom/sec/android/app/launcher/theme/EventThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isEventThemeEnable()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfEventPage:I
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2400(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v6

    sub-int/2addr v3, v6

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v7, v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->mNormalIndicatorImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/PageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v7

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    invoke-static {v6, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2600(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2700(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->setAdapterViewSensitive(Z)V

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2900(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2900(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getDarkenView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, v11}, Lcom/sec/daliviews/views/ContainerView;->setSensitive(Z)V

    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomOutMode:Z
    invoke-static {v6, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    return-void

    :cond_c
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public onModeChangeToZoomOutComplete()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomAnimationInProgress:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomOutMode:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3002(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPendingSwitchToNormalMode:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPendingSwitchToNormalMode:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    :cond_0
    return-void
.end method

.method public onPageOrderChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$HomePresenterNormalModeSwitchListener;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->reorderPages()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3200(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    :cond_0
    return-void
.end method
