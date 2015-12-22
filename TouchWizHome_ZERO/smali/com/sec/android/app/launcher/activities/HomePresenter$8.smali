.class Lcom/sec/android/app/launcher/activities/HomePresenter$8;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOvershootNotification(F)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isHeadlinesAppEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HEADLINES_INTENT:Landroid/content/Intent;

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivityWithTransitionForHeadlines(Landroid/content/Intent;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageChanged(I)V
    .locals 12

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setKeypadPageChanged(Lcom/sec/daliviews/layouts/PageLayout;I)V

    const-string v1, "HomePresenter"

    const-string v2, "HP NORMAL_MODE onPageChanged!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageIndicator;->getCurrentPage()I

    move-result v1

    if-eq p1, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    move v11, p1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v8

    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_0
    invoke-virtual {v0, v3, v11, v11, v8}, Lcom/sec/android/app/launcher/activities/Accessibility;->genScroll(Lcom/sec/daliviews/views/NativeViewBase;III)V

    :cond_1
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v1

    if-eq p1, v1, :cond_3

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HP onPageChanged newPage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " real page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " different"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez p1, :cond_9

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HP onPageChanged mZeroActivityLaunched = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroActivityLaunched:Z
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3700(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroActivityLaunched:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3700(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivityWithTransitionForHomeZeroPage(Landroid/content/Intent;Z)V

    const-string v1, "HomePresenter"

    const-string v2, "HP Kicks off ZERO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mZeroActivityLaunched:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3702(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "ZPEN"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeRealPreview:Lcom/sec/android/app/launcher/activities/HomeRealPreview;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeRealPreview;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/activities/HomeRealPreview;->captureMainHomeScreen(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mBlockPageAnnouncement:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageIndicatorChange(I)V
    invoke-static {v1, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4400(Lcom/sec/android/app/launcher/activities/HomePresenter;I)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->hasGoogleSearchWidget()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getNeedUpdateForChangeGrid()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v9, v6}, Lcom/sec/android/app/launcher/activities/PagePresenter;->setNeedUpdateForChangeGrid(Z)V

    :cond_7
    if-lez p1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getNeedUpdateForChangeGrid()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updateForChangeGrid()V

    :cond_8
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getNeedUpdateForChangeGrid()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/PagePresenter;->updateForChangeGrid()V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    const-string v1, "HomePresenter"

    const-string v2, "HP onPageChanged - getSavedHomeZeroPageEnableState is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onPageVisibilityChanged(II)V
    .locals 13

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v10, p1, :cond_1

    const-string v10, "HomePresenter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPageVisibilityChanged invalid page="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v12}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pages"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/activities/PagePresenter;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_6

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/sec/daliviews/views/Item;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    :cond_3
    instance-of v10, v5, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-eqz v10, :cond_4

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    instance-of v10, v9, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v10, :cond_2

    invoke-virtual {v9, p2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    goto :goto_2

    :cond_4
    sget-boolean v10, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v10, :cond_2

    instance-of v10, v5, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v3, :cond_2

    if-nez p2, :cond_5

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeItemView;->stopAnim()V

    goto :goto_2

    :cond_6
    sget-boolean v10, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;
    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;
    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v11, 0x1

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->triggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V
    invoke-static {v10, v1, v11}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4500(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/daliviews/views/Adapter;Z)V

    goto :goto_0
.end method

.method public onScrollEnd()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsEnableCapture:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4702(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsScrollStart:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4602(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    const/4 v1, 0x4

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/PageIndicator;->setVisibilityAnimated(IF)V

    :cond_0
    return-void
.end method

.method public onScrollPreStart()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v0

    sget v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->ZERO_PAGENUM:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->takeScreenShot(Lcom/sec/android/app/launcher/activities/PagePresenter;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->SetIsEnableCapture(Z)V

    :cond_0
    return-void
.end method

.method public onScrollStart()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsScrollStart:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4602(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setPageIndicatorVisibility(I)V

    :cond_0
    return-void
.end method

.method public onUpdatePageIndication(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsScrollStart:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/PageIndicator;->setVisibility(I)V

    goto :goto_0
.end method
