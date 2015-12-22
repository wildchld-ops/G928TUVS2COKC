.class Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/PagedAdapterView$PagedAdapterViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsPagedAdapterViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    return-void
.end method


# virtual methods
.method public onCreatePages(I)[J
    .locals 10

    :try_start_0
    new-array v4, p1, [J

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v6

    const v7, 0x7f030009

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/FixedPageView;

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mkeepBackground:Z
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getAppTrayBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Lcom/sec/daliviews/views/FixedPageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/sec/daliviews/views/FixedPageView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/FixedPageView;

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->setListeners(Lcom/sec/daliviews/views/AdapterView;)V
    invoke-static {v7, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4600(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/AdapterView;)V

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/sec/daliviews/views/FixedPageView;->setDragEventInterest(I)V

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/sec/daliviews/views/FixedPageView;->enableGrid(Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mRearrangementDelay:F
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4700(Lcom/sec/android/app/launcher/activities/AppsPresenter;)F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/sec/daliviews/views/FixedPageView;->setRearrangementDragDelay(F)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAppsDragListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;
    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/daliviews/views/FixedPageView;->setDragLocationListener(Lcom/sec/daliviews/views/AdapterView$dragLocationListener;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/daliviews/views/FixedPageView;->setPageFlipTrigger(I)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/FixedPageView;->getPeer()J

    move-result-wide v8

    aput-wide v8, v4, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 13

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onItemUpdated AppsListener:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v10}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/daliviews/views/PagedListAdapter;->getItems()Ljava/util/List;

    move-result-object v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/daliviews/views/Item;

    instance-of v10, v8, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v10, :cond_1

    move-object v5, v8

    check-cast v5, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v10, v8, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v10, :cond_0

    move-object v2, v8

    check-cast v2, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener$1;

    invoke-direct {v10, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener$1;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;)V

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    new-instance v10, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener$2;

    invoke-direct {v10, p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener$2;-><init>(Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;)V

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v1

    if-eq v1, v0, :cond_4

    add-int/lit8 v4, v4, 0x1

    move v0, v1

    :cond_4
    invoke-virtual {v5, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerId(I)V

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v10

    if-eq v0, v10, :cond_6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v0

    :cond_6
    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/data/FolderItem;->setContainerId(I)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public onItemsUpdated()V
    .locals 2

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemsUpdated AppsListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatePageType([II)V
    .locals 8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/FixedPageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mPageIndicatorImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$4900(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/FixedPageView;->setPageIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I
    invoke-static {v1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5002(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mListMode:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mIsModeChangeEditToNormal:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5100(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5000(Lcom/sec/android/app/launcher/activities/AppsPresenter;)I

    move-result v1

    if-eq v1, p2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mOldPageCount:I
    invoke-static {v1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5002(Lcom/sec/android/app/launcher/activities/AppsPresenter;I)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "APPS"

    const/4 v3, 0x0

    int-to-long v4, p2

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mIsModeChangeEditToNormal:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$5102(Lcom/sec/android/app/launcher/activities/AppsPresenter;Z)Z

    return-void
.end method
