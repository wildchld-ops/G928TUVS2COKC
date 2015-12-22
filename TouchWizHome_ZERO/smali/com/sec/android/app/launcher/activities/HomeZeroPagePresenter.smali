.class public Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;
.super Lcom/sec/android/app/launcher/activities/PagePresenter;
.source "HomeZeroPagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;
    }
.end annotation


# static fields
.field public static final PREFERECES_HOMEZEROPAGE_ENABLE:Ljava/lang/String; = "home_zeropage_enable"

.field public static final PREFERECES_HOMEZEROPAGE_NAME:Ljava/lang/String; = "home_zeropage_name"

.field private static final TAG:Ljava/lang/String; = "HomeZeroPagePresenter"


# instance fields
.field private mBgImageView:Lcom/sec/daliviews/views/ImageView;

.field private mCheckBox:Lcom/sec/daliviews/views/CheckBox;

.field private mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

.field private mDualFirstCheckImageView:Lcom/sec/daliviews/views/ImageView;

.field private mDualFirstTextView:Lcom/sec/daliviews/views/TextView;

.field private mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

.field private mDualSecondCheckImageView:Lcom/sec/daliviews/views/ImageView;

.field private mDualSecondTextView:Lcom/sec/daliviews/views/TextView;

.field private mHomeZeroPageDualView:Lcom/sec/daliviews/views/ContainerView;

.field private mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;ZLcom/sec/android/app/launcher/activities/HomePresenter;ZZ)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/launcher/activities/PagePresenter;-><init>(Lcom/sec/daliviews/views/PageView;Lcom/sec/android/app/launcher/data/HomePageItem;ZLcom/sec/android/app/launcher/activities/HomePresenter;ZZZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mBgImageView:Lcom/sec/daliviews/views/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageDualView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstCheckImageView:Lcom/sec/daliviews/views/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondCheckImageView:Lcom/sec/daliviews/views/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstTextView:Lcom/sec/daliviews/views/TextView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondTextView:Lcom/sec/daliviews/views/TextView;

    check-cast p1, Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f0d00bf

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setContentDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/CheckBox;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mBgImageView:Lcom/sec/daliviews/views/ImageView;

    const-string v0, "USA"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setPageShadowEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->setDragEventInterest(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setupHomeZeroPageCheckBox()V

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageDualView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageDualView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstCheckImageView:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondCheckImageView:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstTextView:Lcom/sec/daliviews/views/TextView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setupHomeZeroPageDualCheckBox()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "CHINA"

    sget-object v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setHomeZeroPageOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setHomeZeroPageOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->updateHomeZeroPageDualCheck(I)V

    return-void
.end method

.method private setHomeZeroPageOff()V
    .locals 8

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->updateBackground(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    sget-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageDualView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/views/ImageView;->setClickable(Z)V

    :cond_0
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v1, "flipboard.boxer.intent.action.CLEAR_APP"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10808000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getScreenBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->deleteScreenBitmap()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "ZPON"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HomeZeroPagePresenter"

    const-string v2, "Can\'t find flipboard activity to handle intent to remove recents; ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setHomeZeroPageOn()V
    .locals 7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->updateBackground(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageDualView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ContainerView;->setOpacity(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/ImageView;->setClickable(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v2, "ZPON"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private updateHomeZeroPageDualCheck(I)V
    .locals 5

    const/4 v4, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3eb33333    # 0.35f

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstCheckImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondCheckImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    :goto_0
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageEnableState(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setHomeZeroPageOn()V

    :goto_1
    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setZeroPosition(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setOpacity(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstCheckImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondCheckImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setHomeZeroPageOff()V

    goto :goto_1
.end method


# virtual methods
.method public SetZeroPageBg(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeZeroPageView;->destroy()V

    :cond_0
    return-void
.end method

.method public getHomeZeroPageBgImageView()Lcom/sec/daliviews/views/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mBgImageView:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method public getHomeZeroPageCheckBox()Lcom/sec/daliviews/views/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    return-object v0
.end method

.method public getHomeZeroPageView()Lcom/sec/android/app/launcher/views/HomeZeroPageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mHomeZeroPageView:Lcom/sec/android/app/launcher/views/HomeZeroPageView;

    return-object v0
.end method

.method public setHomeZeroPageOnOff()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->saveHomeZeroPageEnableState(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/views/CheckBox;->setChecked(Z)V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setHomeZeroPageOn()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setHomeZeroPageOff()V

    goto :goto_1
.end method

.method public setZeroItem(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->getSavedHomeZeroPageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeZeroPagePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldtitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newtitle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setZeroPage(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setZeroPageDummyBg()V

    :cond_0
    return-void
.end method

.method public setZeroPage(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$PreferecesUtil;->saveHomeZeroPageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setZeroPageBg(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setZeroPageIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setZeroPageBg(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setupHomeZeroPageCheckBox()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$1;-><init>(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/CheckBox;->setOnCheckedChangeListener(Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;)V

    return-void
.end method

.method public setupHomeZeroPageDual()V
    .locals 8

    const v7, 0x7f0a0101

    const v6, 0x7f0a0100

    const/4 v5, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroPageList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroPageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroPageList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ImageView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondTextView:Lcom/sec/daliviews/views/TextView;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroPageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ImageView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/ImageView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/ZeroPageListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondTextView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/TextView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->updateHomeZeroPageDualCheck(I)V

    :cond_2
    return-void
.end method

.method public setupHomeZeroPageDualCheckBox()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualFirstBgImageView:Lcom/sec/daliviews/views/ImageView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$2;-><init>(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mDualSecondBgImageView:Lcom/sec/daliviews/views/ImageView;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$3;-><init>(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;)V

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    return-void
.end method

.method public updateZeroPageCheckBox()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/CheckBox;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    const v2, 0x7f0a00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v3, v2, v3, v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutMargins(IIII)V

    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutWidth(I)V

    const v2, 0x7f0a00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->setLayoutHeight(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->mCheckBox:Lcom/sec/daliviews/views/CheckBox;

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/views/CheckBox;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_0
    return-void
.end method
