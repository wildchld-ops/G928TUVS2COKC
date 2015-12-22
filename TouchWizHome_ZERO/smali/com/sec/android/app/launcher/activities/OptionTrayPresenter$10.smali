.class Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$10;
.super Ljava/lang/Object;
.source "OptionTrayPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setScreenGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->checkAvailableChangeGrid()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->updateBtnForScreenGrid(I)V
    invoke-static {v3, v5}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$300(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;I)V

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->GRID_VALUE:[[I
    invoke-static {}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$400()[[I

    move-result-object v3

    aget-object v3, v3, v5

    aget v3, v3, v5

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->GRID_VALUE:[[I
    invoke-static {}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$400()[[I

    move-result-object v4

    aget-object v4, v4, v5

    aget v4, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->changeGridSize(II)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isAppsDynamicGridChangeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->access$100(Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getSavedAppsGridSize()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->saveAppsGridSize(Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;)V

    :cond_1
    return v6
.end method
