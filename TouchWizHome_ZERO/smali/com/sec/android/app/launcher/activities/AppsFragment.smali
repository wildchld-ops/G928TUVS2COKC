.class public Lcom/sec/android/app/launcher/activities/AppsFragment;
.super Lcom/sec/android/app/launcher/activities/FragmentBase;
.source "AppsFragment.java"


# static fields
.field private static final ENABLE_DEBUG:Z = true

.field private static final MENU_CLEAR_SELECTION:I = 0x67

.field private static final MENU_SELECT_ALL:I = 0x64

.field private static final MENU_SELECT_ALL_IN_FOLDER:I = 0x66

.field private static final MENU_SELECT_ALL_IN_PAGE:I = 0x65

.field private static final MENU_SELECT_EFFECT:I = 0x2

.field static final PREFERENCES_SCROLL_EFFECT:Ljava/lang/String; = "apps_scroll_effect"

.field private static final TAG:Ljava/lang/String; = "AppsFragment"

.field private static final mEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field private mHandler:Landroid/os/Handler;

.field private mSavedState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsFragment$3;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mEffects:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mSavedState:Landroid/os/Bundle;

    return-void
.end method

.method private createAppsPresenter()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private selectTransitionEffect()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->setParentFragment(Lcom/sec/android/app/launcher/activities/FragmentBase;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsFragment;->mEffects:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getSavedScrollEffect()I

    move-result v2

    invoke-static {v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->fromInt(I)Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->setEffects(Ljava/util/Map;Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AppsFragment"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyScrollEffect(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->saveScrollEffect(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setScrollEffect(I)V

    goto :goto_0
.end method

.method public getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    return-object v0
.end method

.method public getSavedScrollEffect()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "apps_scroll_effect"

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_NORMAL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public onBackPressed()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isHomeTransitionReady()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isAppsTransitionReady()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "AppsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackPressed skipped:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " home ready:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isHomeTransitionReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apps ready:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isAppsTransitionReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isZoomAnimInProgress()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onBackPressed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v3, v0}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    goto :goto_0

    :cond_2
    const-string v2, "AppsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showHomeFragment not called:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isZoomAnimInProgress()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "AppsFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setHasOptionsMenu(Z)V

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->createAppsPresenter()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "Effect setting"

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    const/16 v1, 0x64

    const-string v2, "Select all"

    invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v0, 0x65

    const-string v1, "Select all in page"

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const/16 v1, 0x66

    const-string v2, "Select all in folder"

    invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const/16 v1, 0x67

    const-string v2, "Unselect all"

    invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "AppsFragment"

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

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genWindowStateChanged(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/activities/PresenterBase;)V

    :cond_0
    return-void
.end method

.method public onHomePressed()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onHomePressed()Z

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPagedAdapterView()Lcom/sec/daliviews/views/PagedAdapterView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PagedAdapterView;->isTransitionEffectEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a004a

    invoke-virtual {v2, v5, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v6, v0}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setVisibility(I)V

    move v3, v4

    goto :goto_0
.end method

.method public onLocaleChangeCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onLocaleChangeCompleted()V

    :cond_0
    return-void
.end method

.method public onLocaleChangeStarted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setLocaleChangeStarted()V

    :cond_0
    return-void
.end method

.method public onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/AppsFragment$1;-><init>(Lcom/sec/android/app/launcher/activities/AppsFragment;Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->selectTransitionEffect()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->selectAllItems()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->selectAllInPage()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->selectAllInFolder()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->UnSelectAll()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onPause()V

    :cond_0
    const-string v0, "AppsFragment"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->HIDE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v4

    if-eqz v4, :cond_5

    move v0, v2

    :cond_3
    :goto_1
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v6, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v7, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v8, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    if-eqz v1, :cond_4

    if-nez v0, :cond_6

    move v4, v2

    :goto_2
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    if-nez v0, :cond_7

    move v4, v2

    :goto_3
    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    invoke-interface {p1, v7, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    if-nez v0, :cond_8

    :goto_4
    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :cond_4
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v4, v3

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4
.end method

.method public onResume()V
    .locals 2

    const-string v0, "AppsFragment"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public saveScrollEffect(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "apps_scroll_effect"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAppsSelectionMode(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFragment$2;-><init>(Lcom/sec/android/app/launcher/activities/AppsFragment;Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setVisible(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setVisibility(I)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->deemSurface(Z)V

    :cond_0
    return-void
.end method

.method public setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setVisibilityAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->deemSurface(Z)V

    :cond_0
    return-void
.end method

.method public surfaceChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFragment;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->surfaceChanged()V

    :cond_0
    return-void
.end method
