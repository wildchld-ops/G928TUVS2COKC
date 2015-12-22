.class public Lcom/android/settings/ChooseLockGeneric;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/ChooseLockGeneric$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 11

    const/4 v10, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v6, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getFragmentClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v6, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getFragmentClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const-string v6, ":android:no_headers"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v2

    :cond_1
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v6, v6, 0x23

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0403

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "status_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v4

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v5, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getFragmentClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v5, v5, 0x23

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0403

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v3

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
