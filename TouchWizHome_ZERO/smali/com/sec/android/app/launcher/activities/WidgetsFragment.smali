.class public Lcom/sec/android/app/launcher/activities/WidgetsFragment;
.super Lcom/sec/android/app/launcher/activities/FragmentBase;
.source "WidgetsFragment.java"


# static fields
.field private static final PREFERENCES_SCROLL_EFFECT:Ljava/lang/String; = "widgets_scroll_effect"

.field public static final RUNTIME_STATE_WIDGET_CURRENT_MODE:Ljava/lang/String; = "launcher.widget_current_mode"

.field public static final RUNTIME_STATE_WIDGET_CURRENT_SCREEN:Ljava/lang/String; = "launcher.widget_current_screen"

.field private static final TAG:Ljava/lang/String; = "WidgetsFragment"


# instance fields
.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentPage:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

.field private mOpenedWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

.field private mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mOpenedWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentPage:I

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentMode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/WidgetsFragment;)Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    return-object v0
.end method

.method private closeFolderView()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ClippedContainerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mOpenedWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mOpenedWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->showClosedFolder(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSavedScrollEffect()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "widgets_scroll_effect"

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_NORMAL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->closeFolderView()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->clearSelectionArea()V

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v7, v9}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setVisibility(Z)V

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->clearQuery()V

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->clearSearchViewFocus()V

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v10

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->SLIDE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    invoke-virtual {v10, v8, v8, v11}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(ZZLcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-boolean v10, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v10, :cond_4

    iget v10, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v10, v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshWidgetList()V

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/daliviews/layouts/PageLayout;->getNumberOfPages()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/sec/daliviews/layouts/PageLayout;->getPage(I)Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/FixedPageView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/FixedPageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v8, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->updatePageView(Lcom/sec/daliviews/views/FixedPageView;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/sec/android/app/launcher/activities/WidgetsFragment$1;

    invoke-direct {v10, p0, v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment$1;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsFragment;Lcom/sec/daliviews/views/FixedPageView;)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getOrientation()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getZoomAniTime()F

    move-result v10

    invoke-virtual {v8, v10}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->zoomInPageViews_widgets(F)V

    :cond_5
    move v8, v9

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onBackPressed()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_7
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0a02da

    invoke-virtual {v6, v10, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v11, v1}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v10, v11, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->resetOptionTray()V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WidgetsFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "launcher.widget_current_screen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentPage:I

    const-string v0, "launcher.widget_current_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentMode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->destroy()V

    :cond_0
    const-string v0, "WidgetsFragment"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onHiddenChanged(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->removeFocus()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genWindowStateChanged(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/activities/PresenterBase;)V

    :cond_0
    return-void
.end method

.method public onHomePressed()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onHomePressed()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setVisibility(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->clearQuery()V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->clearSearchViewFocus()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->closeFolderView()Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/launcher/utils/FadeDuration;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->resetOptionTray()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->handleWidgetsListHomePress()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentPage:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onRestoreInstanceState(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment$2;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsFragment;Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onPause()V

    :cond_0
    const-string v0, "WidgetsFragment"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "WidgetsFragment"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public releaseMemory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    return-void
.end method

.method public saveScrollEffect(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "widgets_scroll_effect"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHomeFragment(Lcom/sec/android/app/launcher/activities/HomeFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    :cond_0
    return-void
.end method

.method public setOpenedWidgetFolderView(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setEnabled(ZZ)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->hideKeyboard()V

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mOpenedWidgetFolderView:Lcom/sec/android/app/launcher/views/WidgetFolderView;

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setVisible(I)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isInitialised()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-direct {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentPage:I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onRestoreInstanceState(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentPage:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onRestoreInstanceState(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/utils/FadeDuration;->getDefaultDuration()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setVisibleAnimated(IF)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mCurrentMode:Ljava/lang/String;

    goto :goto_1
.end method

.method public surfaceChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->surfaceChanged()V

    :cond_0
    return-void
.end method
