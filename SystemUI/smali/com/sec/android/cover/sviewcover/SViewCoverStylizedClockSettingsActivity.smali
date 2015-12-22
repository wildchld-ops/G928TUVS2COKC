.class public Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;
.super Lcom/sec/android/cover/sviewcover/SViewCoverActivity;
.source "SViewCoverStylizedClockSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverStylizedClockSettingsActivity"


# instance fields
.field private STYLIZED_CLOCK_PREVIEW_DRAWABLES:[I

.field private mCurrentClockIndex:I

.field private mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mNextButton:Landroid/widget/LinearLayout;

.field private mPrevButton:Landroid/widget/LinearLayout;

.field private mRootClickSettingsBG:Landroid/widget/ImageView;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->STYLIZED_CLOCK_PREVIEW_DRAWABLES:[I

    return-object v0
.end method

.method private nextStyle()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->STYLIZED_CLOCK_PREVIEW_DRAWABLES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method private previousStyle()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setBackGroundImage()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mRootClickSettingsBG:Landroid/widget/ImageView;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mRootClickSettingsBG:Landroid/widget/ImageView;

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mRootClickSettingsBG:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->getWallpaperDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->STYLIZED_CLOCK_PREVIEW_DRAWABLES:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private setNewClockStyle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->setCurrentStyleIndex(I)V

    return-void
.end method


# virtual methods
.method protected coverOpenEvent()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SViewStyleClock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverOpenEvent()V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "SViewCoverStylizedClockSettingsActivity"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPossibleDisplayPopup()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "scover_sharedpreferences"

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "Do_not_ask_warning"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "SViewCoverStylizedClockSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DO_NOT_ASK_CLOCK_WARNING value => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_style_prev:I

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->previousStyle()V

    :cond_0
    :goto_0
    const-string v3, "SViewCoverStylizedClockSettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current style "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_style_next:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->nextStyle()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_cancel_button:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_back_button:I

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_save_button:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->isPossibleDisplayPopup()Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    const-string v3, "SViewCoverStylizedClockSettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNewClockStyle saved index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Don\'t show again ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    if-lez v3, :cond_5

    if-nez v0, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.cover.sviewcover.SViewCoverPopupActivity.LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "stylized_clock_current_index"

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    if-nez v3, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->setNewClockStyle()V

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v3, "SViewCoverStylizedClockSettingsActivity"

    const-string v4, "ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x1

    invoke-super {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onCreate(Landroid/os/Bundle;)V

    sget v5, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_stylized_clock_settings_layout:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$array;->s_view_cover_stylized_clock_preview_drawable_list:I

    invoke-static {v5, v6}, Lcom/sec/android/cover/CoverUtils;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->STYLIZED_CLOCK_PREVIEW_DRAWABLES:[I

    invoke-static {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    sget v5, Lcom/sec/android/sviewcover/R$id;->clock_style_preview:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;

    invoke-direct {v6, p0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "stylized_clock_current_index"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v5}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v5

    iput v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_cancel_button:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_back_button:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_save_button:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v5, Lcom/sec/android/sviewcover/R$id;->clock_style_prev:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    sget v5, Lcom/sec/android/sviewcover/R$id;->clock_style_next:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    sget v5, Lcom/sec/android/sviewcover/R$id;->img_clock_style_prev:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Lcom/sec/android/sviewcover/R$id;->img_clock_style_next:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    const-string v5, "SViewCoverStylizedClockSettingsActivity"

    const-string v6, "in case of RTL -> changed image"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->clock_activity_next_btn:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    if-eqz v3, :cond_4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->clock_activity_prev_btn:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_clock_setting_root:I

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mRootClickSettingsBG:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->setBackGroundImage()V

    return-void

    :cond_5
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mCurrentClockIndex:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_7

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->clock_activity_prev_btn:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    if-eqz v3, :cond_4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->clock_activity_next_btn:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_1
    const-string v0, "SViewCoverStylizedClockSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->STYLIZED_CLOCK_PREVIEW_DRAWABLES:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->mPrevButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_3
    return-void
.end method
