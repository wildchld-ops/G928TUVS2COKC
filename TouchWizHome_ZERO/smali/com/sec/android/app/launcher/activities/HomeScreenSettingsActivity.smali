.class public Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;
.super Landroid/app/Activity;
.source "HomeScreenSettingsActivity.java"


# static fields
.field public static final HOME_SETTINGS_FRAGMENT:I = 0x0

.field public static final HOME_SETTINGS_MODE_FRAGMENT:I = 0x1

.field public static TAG:Ljava/lang/String; = null

.field private static final VISIBLE_FRAGMENT:Ljava/lang/String; = "visible_fragment"

.field private static gInstance:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;


# instance fields
.field private mHomeModeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

.field private mHomeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

.field private mVisibleFragment:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HomeScreenSettingsActivity"

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->gInstance:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mVisibleFragment:I

    return-void
.end method

.method public static instance()Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->gInstance:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mVisibleFragment:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mVisibleFragment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->setCheckedSelectModeButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->showHomeScreenSettings()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030053

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->setContentView(I)V

    sput-object p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->gInstance:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0124

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b0125

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    if-eqz p1, :cond_2

    const-string v1, "visible_fragment"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->showHomeScreenSettings()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->showHomeScreenModeSettings()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->showHomeScreenSettings()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->gInstance:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "visible_fragment"

    iget v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mVisibleFragment:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showHomeScreenModeSettings()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mVisibleFragment:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const v1, 0x7f0d005a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->setTitle(I)V

    return-void
.end method

.method public showHomeScreenSettings()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mVisibleFragment:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const v1, 0x7f0d0061

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsActivity;->setTitle(I)V

    return-void
.end method
