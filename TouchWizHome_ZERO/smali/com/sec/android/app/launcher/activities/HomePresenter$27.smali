.class Lcom/sec/android/app/launcher/activities/HomePresenter$27;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->doneChangeGrid()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneChangeGrid:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7200(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v1, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mDoneChangeGrid:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7202(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mTakeScreenshot:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7302(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mOptionTrayPresenter:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$5800(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->changeVisibilityScreenGridView(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCancelDoneBarPresenter:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->onBackPressed()Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mHomeZeroPagePresenter:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4100(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->switchZeroPageViewAttachedMode(Z)V
    invoke-static {v1, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6400(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageLayout:Lcom/sec/daliviews/layouts/PageLayout;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToPage(IF)V

    :cond_3
    sget v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sget v2, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    if-ne v1, v2, :cond_4

    sget v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    sget v2, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    if-eq v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateDBForPresenters()V

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v1

    sget v2, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    sget v3, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->setHomePageGridSize(II)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->clearTempPagePresenters()V

    sput v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_COLUMNS:I

    sput v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_ROWS:I

    sput v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sput v7, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsChangedPageCountOnGrid:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7500(Lcom/sec/android/app/launcher/activities/HomePresenter;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "HOME"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mCurrentNumberOfWorkspace:I
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7600(Lcom/sec/android/app/launcher/activities/HomePresenter;)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mIsChangedPageCountOnGrid:Z
    invoke-static {v1, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7502(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)Z

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mPageEditMode:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$602(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;)Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->showPageGrid(Z)V
    invoke-static {v1, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6900(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->setHapticFeedBack(Z)V
    invoke-static {v1, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7000(Lcom/sec/android/app/launcher/activities/HomePresenter;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v1, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendIntentForSamsungPay(Z)V

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen Grid :: Done completed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isAppsDynamicGridChangeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "HomePresenter"

    const-string v2, "Screen Grid :: doneChangeGrid - change Apps Grid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->changeGridSize(Z)V

    goto/16 :goto_0
.end method
