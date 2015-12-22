.class public Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;
.super Lcom/sec/android/app/launcher/activities/FragmentBase;
.source "ZeroPageListFragment.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

.field private mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;)Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    return-object v0
.end method


# virtual methods
.method public getZeroPageListPresenter()Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v3, v0}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->switchZeroPageSettingView(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->destroy()V

    :cond_0
    return-void
.end method

.method public onHomePressed()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->onHomePressed()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/launcher/utils/FadeDuration;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->resetOptionTray()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->handleWidgetsListHomePress()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onNativeInit(Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment$1;-><init>(Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;Lcom/sec/android/app/launcher/activities/FragmentBase$OnInitListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->onResume()V

    :cond_0
    return-void
.end method

.method public releaseMemory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    return-void
.end method

.method public setCreate()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    goto :goto_0
.end method

.method public setHomeFragment(Lcom/sec/android/app/launcher/activities/HomeFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    :cond_0
    return-void
.end method

.method public setVisible(I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setVisible(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setVisibilityZeroPageListBarPresenter(I)V

    goto :goto_0
.end method

.method public setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setVisible(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->mZeroPageListPresenter:Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;->setVisibilityZeroPageListBarPresenter(I)V

    goto :goto_0
.end method
