.class Lcom/sec/android/app/launcher/activities/HomePresenter$20;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->completeSwitchToZoomedOutPageMode()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOvershootNotification(F)V
    .locals 0

    return-void
.end method

.method public onPageChanged(I)V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "HomePresenter"

    const-string v3, "HP ZoomedOutPageMode onPageChanged!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mBlockPageAnnouncement:Z
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4300(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePageIndicatorChange(I)V
    invoke-static {v2, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4400(Lcom/sec/android/app/launcher/activities/HomePresenter;I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageIndicator;->getCurrentPage()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentMode:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$2500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3900(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setVisibilityAnimated(I)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isZeroPageListEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPagePresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->switchZeroPageSettingView(Z)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$600(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->showPageGrid(I)V
    invoke-static {v2, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5900(Lcom/sec/android/app/launcher/activities/HomePresenter;I)V

    :cond_4
    if-eq v1, p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v3

    invoke-virtual {v0, v2, p1, p1, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->genScroll(Lcom/sec/daliviews/views/NativeViewBase;III)V

    :cond_5
    return-void

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mVisibility:I
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5700(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isPageDeletionPossible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mEditBarPresenter:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$3900(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setVisibilityAnimated(I)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->switchZeroPageSettingView(Z)V

    goto :goto_1
.end method

.method public onPageVisibilityChanged(II)V
    .locals 0

    return-void
.end method

.method public onScrollEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    return-void
.end method

.method public onScrollPreStart()V
    .locals 0

    return-void
.end method

.method public onScrollStart()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$20;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setIgnoreDrawAppWidget(Z)V

    return-void
.end method

.method public onUpdatePageIndication(I)V
    .locals 0

    return-void
.end method
