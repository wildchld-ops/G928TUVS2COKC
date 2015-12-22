.class public Lcom/sec/android/app/launcher/activities/HomeFragment;
.super Lcom/sec/android/app/launcher/activities/FragmentBase;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/HomeFragment$5;,
        Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;,
        Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_SCROLL_EFFECT:I

.field private static final MENU_DND_EFFECT:I = 0x6

.field private static final MENU_FRAGMENT_TRANSITION_EFFECT:I = 0xa

.field private static final MENU_SELECT_EFFECT:I = 0x2

.field static final PREFERENCES_DND_EFFECT:Ljava/lang/String; = "home_dnd_effect"

.field static final PREFERENCES_EMPTY_PAGE_TEXT:Ljava/lang/String; = "empty_page_text_state"

.field static final PREFERENCES_FRAGMENT_TRANSITION_EFFECT:Ljava/lang/String; = "home_fragment_transition_effect"

.field public static final PREFERENCES_HOMESCREEN_MODE:Ljava/lang/String; = "homescreen_mode"

.field static final PREFERENCES_SCROLL_EFFECT:Ljava/lang/String; = "home_scroll_effect"

.field public static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final TAG:Ljava/lang/String; = "HomeFragment"

.field private static final mDnDEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;",
            ">;"
        }
    .end annotation
.end field

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
.field private mHandler:Landroid/os/Handler;

.field private mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_SHADOW:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v0

    sput v0, Lcom/sec/android/app/launcher/activities/HomeFragment;->DEFAULT_SCROLL_EFFECT:I

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFragment$3;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mEffects:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeFragment$4;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment$4;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mDnDEffects:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/HomeFragment;)Lcom/sec/android/app/launcher/activities/HomePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    return-object v0
.end method

.method public static getTransitionEffectType(I)I
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment;->mEffects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment;->mEffects:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v3

    return v3
.end method

.method private selectDnDEffect()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/DnDEffectSelectFragment;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/DnDEffectSelectFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/DnDEffectSelectFragment;->setParentFragment(Lcom/sec/android/app/launcher/activities/FragmentBase;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment;->mDnDEffects:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedDnDEffectState()I

    move-result v2

    invoke-static {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->fromInt(I)Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/DnDEffectSelectFragment;->setEffects(Ljava/util/Map;Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "HomeFragment"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/DnDEffectSelectFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private selectTransitionEffect()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->setParentFragment(Lcom/sec/android/app/launcher/activities/FragmentBase;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment;->mEffects:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedScrollEffect()I

    move-result v2

    invoke-static {v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->fromInt(I)Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->setEffects(Ljava/util/Map;Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "HomeFragment"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyDnDEffect(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->saveDnDEffect(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDnDEffect(I)V

    return-void
.end method

.method public applyFragmentTransitionEffectState(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->saveFragmentTransitionEffectState(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->enableFragmentTransitionEffect(Z)V

    return-void
.end method

.method public applyScrollEffect(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->saveScrollEffect(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setScrollEffect(I)V

    return-void
.end method

.method public enableFragmentTransitionEffect(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->enableFragmentTransitionEffect(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->enableFragmentTransitionEffect(Z)V

    return-void
.end method

.method public getAppsIconViewPos()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getAppsIconViewPos()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmptyPageTextState()Z
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseEmptyMsg:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "empty_page_text_state"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getHomeDarkenView()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getDarkenView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    return-object v0
.end method

.method public getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    return-object v0
.end method

.method public getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    return-object v0
.end method

.method public getSavedDnDEffectState()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_dnd_effect"

    sget-object v2, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_NONE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSavedFragmentTransitionEffectState()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_fragment_transition_effect"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getSavedScrollEffect()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_scroll_effect"

    sget v2, Lcom/sec/android/app/launcher/activities/HomeFragment;->DEFAULT_SCROLL_EFFECT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public moveToFavoritesPage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->moveToFavoritesPage()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onBackPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "HomeFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onCreate()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x2

    add-int/lit8 v1, v0, 0x1

    const-string v3, "Transition Effect"

    invoke-interface {p1, v4, v2, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v2, 0x6

    add-int/lit8 v0, v1, 0x1

    const-string v3, "DnD Effect"

    invoke-interface {p1, v4, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedFragmentTransitionEffectState()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    const-string v2, "Disable Fragment Transition Effect"

    invoke-interface {p1, v4, v5, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    const-string v2, "Enable Fragment Transition Effect"

    invoke-interface {p1, v4, v5, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v0, v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onDestroy()V

    const-string v0, "HomeFragment"

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

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genWindowStateChanged(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/activities/PresenterBase;)V

    :cond_0
    return-void
.end method

.method public onHomePressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onHomePressed()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/HomeFragment$1;-><init>(Lcom/sec/android/app/launcher/activities/HomeFragment;Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeFragment$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/launcher/activities/HomeFragment$2;-><init>(Lcom/sec/android/app/launcher/activities/HomeFragment;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->selectTransitionEffect()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->selectDnDEffect()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedFragmentTransitionEffectState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->applyFragmentTransitionEffectState(Z)V

    const-string v0, "Enable Fragment Transition Effect"

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->applyFragmentTransitionEffectState(Z)V

    const-string v0, "Disable Fragment Transition Effect"

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onPause()V

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onPause()V

    const-string v0, "HomeFragment"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "HomeFragment"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onResume()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onStop()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onStop()V

    const-string v0, "HomeFragment"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveDnDEffect(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "home_dnd_effect"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveFragmentTransitionEffectState(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "home_fragment_transition_effect"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveScrollEffect(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "home_scroll_effect"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEmptyPageTextState(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "empty_page_text_state"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFlagToMoveToFavoritePage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setFlagToMoveToFavoritePage()V

    return-void
.end method

.method public setVisible(I)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method public setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V
    .locals 2

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHostContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setVisibilityAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->deemSurface(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHostContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method public surfaceChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeFragment;->mPresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->surfaceChanged()V

    :cond_0
    return-void
.end method
