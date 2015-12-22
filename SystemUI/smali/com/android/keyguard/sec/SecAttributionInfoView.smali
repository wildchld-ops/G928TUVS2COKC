.class public Lcom/android/keyguard/sec/SecAttributionInfoView;
.super Landroid/widget/LinearLayout;
.source "SecAttributionInfoView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final KEY_LIVEWALLPAPER_ATTRIBUTION_URL:Ljava/lang/String; = "just_lock_yahoo_livewallpaper_attribution_url"

.field private static final KEY_LIVEWALLPAPER_LOCATION_URL:Ljava/lang/String; = "just_lock_yahoo_livewallpaper_location_url"

.field private static final KEY_WALLPAPER_INFO_LANDING_PAGE_URL:Ljava/lang/String; = "keyguard_wu_wallpaper_info_landing_page_url"

.field private static final KEY_WALLPAPER_INFO_LOGO_IMAGE_PATH:Ljava/lang/String; = "keyguard_wu_wallpaper_info_logo_image_path"

.field private static final KEY_WALLPAPER_INFO_PHOTOGRAPHER:Ljava/lang/String; = "keyguard_wu_wallpaper_info_cp_name"

.field private static final KEY_WALLPAPER_INFO_TITLE:Ljava/lang/String; = "keyguard_wu_wallpaper_info_title"

.field private static final TAG:Ljava/lang/String; = "SecAttributionInfoView"

.field private static mCocktailBarSize:I


# instance fields
.field private final MSG_DELAYED_START_ACTIVITY:I

.field private final START_ACTIVITY_DELAY:I

.field private isSupportMobileKeyboard:Z

.field private locationUrl:Ljava/lang/String;

.field private mAttributionRootView:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentMobileKeyboard:I

.field private mCurrentOrientation:I

.field mDelayedStartActivityHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mLandingPageUrl:Ljava/lang/String;

.field private mLiveviewAttributionView:Landroid/view/View;

.field private mLiveviewLocationView:Landroid/view/View;

.field private mLiveviewRootView:Landroid/view/View;

.field private mLogoChangeHandler:Landroid/os/Handler;

.field private mLogoFileObserverRegistered:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMobileKeyboard:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPhotographer:Landroid/widget/TextView;

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->isSupportMobileKeyboard:Z

    iput v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentMobileKeyboard:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    new-instance v2, Lcom/android/keyguard/sec/SecAttributionInfoView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$1;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    iput v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->MSG_DELAYED_START_ACTIVITY:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->START_ACTIVITY_DELAY:I

    new-instance v2, Lcom/android/keyguard/sec/SecAttributionInfoView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$2;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDelayedStartActivityHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDisplay:Landroid/view/Display;

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->isSupportMobileKeyboard:Z

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->isSupportMobileKeyboard:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecAttributionInfoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLogoImage(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/SecAttributionInfoView;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLandingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateOrientation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecAttributionInfoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecAttributionInfoView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->launchBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SecAttributionInfoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    return-object v0
.end method

.method private launchBrowser(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/SecAttributionInfoView;->launchLandingPage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerLogoImageFileObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/SecAttributionInfoView$9;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoChangeHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecAttributionInfoView$9;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7

    new-instance v4, Landroid/os/UserHandle;

    const/4 v0, -0x2

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string v0, "SecAttributionInfoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find the component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/SecAttributionInfoView$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecAttributionInfoView$3;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private unregisterLogoImageFileObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoFileObserverRegistered:Z

    goto :goto_0
.end method

.method private updateAttributionInfo()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateAttributionInfoView()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateTitle()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updatePhotographer()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLogoImage(Z)V

    return-void
.end method

.method private updateAttributionInfoView()V
    .locals 10

    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->shoudNotDisplayView()Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v4

    :goto_1
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v0, 0x0

    :cond_2
    :goto_2
    if-nez v0, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_title"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "keyguard_wu_wallpaper_info_cp_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "SecAttributionInfoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imageTitle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", logoFilePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", imageCPName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    :goto_3
    if-eqz v4, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    move v4, v5

    goto :goto_3

    :cond_b
    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v5, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    new-instance v6, Lcom/android/keyguard/sec/SecAttributionInfoView$8;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$8;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private updateLiveviewViews()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->shoudNotDisplayView()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    if-eqz v2, :cond_7

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/sec/SecAttributionInfoView$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$6;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/sec/SecAttributionInfoView$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$7;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateLogoImage(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "keyguard_wu_wallpaper_info_logo_image_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateAttributionInfoView()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->registerLogoImageFileObserver()V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOrientation()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    const-string v1, "SecAttributionInfoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change orientation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->adjustCocktailBarMargin()V

    goto :goto_0
.end method

.method private updatePhotographer()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_cp_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_wu_wallpaper_info_title"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected adjustCocktailBarMargin()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget v2, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget v2, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sget v2, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCocktailBarSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method public launchLandingPage(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLandingPageUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v1, Lcom/android/keyguard/sec/SecAttributionInfoView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecAttributionInfoView$4;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const-string v4, "SecAttributionInfoView"

    const-string v5, "onAttachedToWindow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/android/keyguard/R$layout;->sec_attribution_info_view:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    sget v4, Lcom/android/keyguard/R$id;->attribution_info_rootview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->attribution_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$id;->attribution_photographer:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mPhotographer:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$id;->attribution_logo:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLogoView:Landroid/widget/ImageView;

    sget v4, Lcom/android/keyguard/R$id;->liveview_hidden_rootview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_yahoo_livewallpaper_location_url"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->locationUrl:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget v4, Lcom/android/keyguard/R$id;->liveview_hidden_locationview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_yahoo_livewallpaper_attribution_url"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v4, Lcom/android/keyguard/R$id;->liveview_hidden_attributionview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setRippleBackgroudcolor(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setRippleBackgroudcolor(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/SecAttributionInfoView;->setRippleBackgroudcolor(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/sec/SecAttributionInfoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->update()V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setAttributionInfoView(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v4, :cond_6

    new-instance v4, Lcom/android/keyguard/sec/SecAttributionInfoView$5;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/sec/SecAttributionInfoView$5;-><init>(Lcom/android/keyguard/sec/SecAttributionInfoView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->enable()V

    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateOrientation()V

    :cond_8
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentMobileKeyboard:I

    iget v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mCurrentMobileKeyboard:I

    if-ne v0, v2, :cond_1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLiveviewViews()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mMobileKeyboard:Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SecAttributionInfoView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setAttributionInfoView(Lcom/android/keyguard/sec/SecAttributionInfoView;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->unregisterLogoImageFileObserver()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewLocationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mLiveviewAttributionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mAttributionRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object p2, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method setRippleBackgroudcolor(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->dynamiclock_ripple_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public shoudNotDisplayView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isMusicBackgroundSet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecAttributionInfoView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateLiveviewViews()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->updateAttributionInfo()V

    goto :goto_0
.end method
