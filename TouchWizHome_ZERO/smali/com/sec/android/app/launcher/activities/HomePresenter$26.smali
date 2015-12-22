.class Lcom/sec/android/app/launcher/activities/HomePresenter$26;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->cancelChangeGrid(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field final synthetic val$backPressed:Z

.field final synthetic val$homePressed:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-boolean p2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->val$homePressed:Z

    iput-boolean p3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->val$backPressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelChangeGrid:Z
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v7, v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v7, v11}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelChangeGrid:Z
    invoke-static {v7, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6202(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->runScaledModeForScreenGrid(Z)V
    invoke-static {v7, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6300(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageRootView:Lcom/sec/daliviews/views/PageViewContainer;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageViewContainer;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mNewPageMockup:Lcom/sec/daliviews/views/PageView;
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageView;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/daliviews/views/PageViewContainer;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V
    invoke-static {v7, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6400(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZoomablePageIndices:Ljava/util/List;
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v10, v8}, Lcom/sec/daliviews/layouts/PageLayout;->setGridSize(II)V

    sget v7, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    sput v7, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    sget v7, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    sput v7, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v8

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I
    invoke-static {v7, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6502(Lcom/sec/android/app/launcher/activities/HomePresenter;I)I

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z
    invoke-static {v7, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6500(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTempPagePresenter:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageIndex(Lcom/sec/daliviews/views/PageView;)I

    move-result v1

    if-eqz v0, :cond_1

    if-le v0, v1, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    add-int/lit8 v0, v0, -0x1

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I
    invoke-static {v7, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6502(Lcom/sec/android/app/launcher/activities/HomePresenter;I)I

    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/views/ListAdapter;->detachAllItems()V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v8

    invoke-virtual {v7, v5, v8, v11, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->deletePage(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/PageView;ZZ)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->clearTempPagePresenters()V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->reorderPages()V
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3200(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoNotReorderPage:Z
    invoke-static {v7, v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3102(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    :cond_3
    sget v7, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setchangeGridForLiveicon(Z)V

    :goto_2
    sget v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    if-eqz v7, :cond_6

    sget v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    if-eqz v7, :cond_6

    sget v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sget v8, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    if-ne v7, v8, :cond_4

    sget v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    sget v8, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    if-eq v7, v8, :cond_6

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/launcher/activities/PagePresenter;->restorePage(Z)V

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v7, v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setchangeGridForLiveicon(Z)V

    goto :goto_2

    :cond_6
    sput v11, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_COLUMNS:I

    sput v11, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_ROWS:I

    sput v11, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sput v11, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageBackgrounds()V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget v8, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->updateShadowEffect(I)V
    invoke-static {v7, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6700(Lcom/sec/android/app/launcher/activities/HomePresenter;I)V

    iget-boolean v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->val$homePressed:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->postOnHomePressed()Z

    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->clearSelectionArea()V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v7, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$602(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v8

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->switchPageIndicatorMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    invoke-static {v7, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2600(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageMargins()V
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2700(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iget-boolean v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->val$homePressed:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3900(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->showEditBar()V

    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->showPageGrid(Z)V
    invoke-static {v7, v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6900(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->setHapticFeedBack(Z)V
    invoke-static {v7, v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7000(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v7, v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v7, v11}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentPageIndex:I
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6500(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0252

    invoke-virtual {v6, v7, v10, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    const v7, 0x7f0a0239

    invoke-virtual {v6, v7, v10, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v4

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->startZeroPageZoomedOutMode(Landroid/content/res/Resources;FF)V
    invoke-static {v7, v6, v8, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7100(Lcom/sec/android/app/launcher/activities/HomePresenter;Landroid/content/res/Resources;FF)V

    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendIntentForSamsungPay(Z)V

    const-string v7, "HomePresenter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen Grid :: Cancel completed - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-boolean v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->val$backPressed:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$26;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->postOnBackPressed()Z
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    goto/16 :goto_4
.end method
