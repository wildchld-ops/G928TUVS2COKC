.class Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;
.super Landroid/os/Handler;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/android/app/launcher/activities/LauncherActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v4, 0x1

    const/high16 v9, 0x44e10000    # 1800.0f

    const/4 v5, 0x0

    const/high16 v8, 0x3e800000    # 0.25f

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    instance-of v6, v2, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v6, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    :cond_0
    :goto_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    instance-of v6, v2, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v6, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    goto :goto_0

    :cond_3
    instance-of v6, v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v6, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollDir:I
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$4300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v4, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4, v8}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->moveToPage(IF)V

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollDir:I
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$4300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v4, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    goto/16 :goto_1

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->moveToPage(IF)V

    goto/16 :goto_1

    :cond_9
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4, v8}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->moveToPage(IF)V

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollDir:I
    invoke-static {v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$4300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_c

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    invoke-virtual {v4, v5, v9}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_1

    :cond_b
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    invoke-virtual {v4, v5, v9}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollDir:I
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$4300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_1

    :cond_d
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
