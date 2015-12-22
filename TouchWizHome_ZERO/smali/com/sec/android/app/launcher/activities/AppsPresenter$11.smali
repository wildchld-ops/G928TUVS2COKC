.class Lcom/sec/android/app/launcher/activities/AppsPresenter$11;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/layouts/PageLayout$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupPageLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOvershootNotification(F)V
    .locals 0

    return-void
.end method

.method public onPageChanged(I)V
    .locals 10

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setKeypadPageChanged(Lcom/sec/daliviews/layouts/PageLayout;I)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicator:Lcom/sec/daliviews/views/PageIndicator;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PageIndicator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/views/PageIndicator;->getCurrentPage()I

    move-result v2

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->pageAdded:Z
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->updateFromPageChange(I)V
    invoke-static {v7, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2200(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)V

    :goto_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<GATE-M>SCREEN_LOADED_APP_MENU_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</GATE-M>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "GATE"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->showPageGrid(I)V
    invoke-static {v7, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2300(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)V

    :cond_1
    sget-boolean v7, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/Item;

    instance-of v7, v6, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getJContainerId()I

    move-result v7

    if-ne v7, p1, :cond_2

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->pageAdded:Z
    invoke-static {v7, v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2102(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z

    goto/16 :goto_0

    :cond_4
    if-eq p1, v2, :cond_6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibilityEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v8

    invoke-virtual {v0, v7, p1, p1, v8}, Lcom/sec/android/app/launcher/activities/Accessibility;->genScroll(Lcom/sec/daliviews/views/NativeViewBase;III)V

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v7, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getItemsAtPage(I)Ljava/util/List;

    move-result-object v1

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->DEBUG:Z
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2500()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/Item;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[page]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[pageC]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[pos]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[posC]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[v]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    if-nez v7, :cond_8

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - isValidPeer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    instance-of v7, v6, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v7, :cond_7

    check-cast v6, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->invalidateTitleIfNeed()V

    goto/16 :goto_2

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v7

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v8

    if-ne v7, v8, :cond_b

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v7

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v8

    if-eq v7, v8, :cond_c

    :cond_b
    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[page]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[pageC]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[pos]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[posC]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[v]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[pr]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    instance-of v7, v6, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v7, :cond_a

    check-cast v6, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->invalidateTitleIfNeed()V

    goto/16 :goto_3

    :cond_d
    return-void
.end method

.method public onPageVisibilityChanged(II)V
    .locals 7

    sget-boolean v6, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mItemList:Ljava/util/Set;
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2400(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v5, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v4, v3, v1

    if-eqz v4, :cond_1

    check-cast v4, Lcom/sec/daliviews/views/Item;

    move-object v2, v4

    :goto_1
    instance-of v6, v2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getJContainerId()I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->isLiveView()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->stopAnim()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onScrollEnd()V
    .locals 3

    const/high16 v1, 0x400000

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getIsHomeKeyPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsRoot:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeKeyPressedIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeKeyPressedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setIsHomeKeyPressed(ZLandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onScrollPreStart()V
    .locals 0

    return-void
.end method

.method public onScrollStart()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mTouchEffectIcon:Lcom/sec/daliviews/views/IconView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$2600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/IconView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$11;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->cleanupTouchEffect()V

    :cond_0
    return-void
.end method

.method public onUpdatePageIndication(I)V
    .locals 0

    return-void
.end method
