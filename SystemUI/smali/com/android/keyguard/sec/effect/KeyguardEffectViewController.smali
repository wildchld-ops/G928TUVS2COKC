.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LaunchTransitionCallback;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;
    }
.end annotation


# static fields
.field private static final ACTION_IMAGES_CHANGED:Ljava/lang/String; = "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

.field public static final ACTION_LOCKSCREEN_IMAGE_CHANGED:Ljava/lang/String; = "com.sec.android.gallery3d.LOCKSCREEN_IMAGE_CHANGED"

.field public static final EFFECT_ABSTRACTTILE:I = 0xb

.field public static final EFFECT_AUTUMN:I = 0x53

.field public static final EFFECT_BLIND:I = 0x5

.field public static final EFFECT_BRILLIANTCUT:I = 0x9

.field public static final EFFECT_BRILLIANTRING:I = 0x8

.field public static final EFFECT_COLOURDROPLET:I = 0xf

.field public static final EFFECT_GEOMETRICMOSAIC:I = 0xc

.field public static final EFFECT_HOME:I = -0x2

.field public static final EFFECT_JUST_LOCK_LIVE_WALLPAPER:I = 0x64

.field public static final EFFECT_LIGHT:I = 0x2

.field public static final EFFECT_LIQUID:I = 0xd

.field public static final EFFECT_LIVEWALLPAPER:I = -0x1

.field public static final EFFECT_MASS_RIPPLE:I = 0x7

.field public static final EFFECT_MASS_TENSION:I = 0x6

.field public static final EFFECT_MONTBLANC:I = 0xa

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_PARTICLE:I = 0xe

.field public static final EFFECT_POPPING_COLOR:I = 0x3

.field public static final EFFECT_RIPPLE:I = 0x1

.field public static final EFFECT_SEASONAL:I = 0x55

.field public static final EFFECT_SPRING:I = 0x51

.field public static final EFFECT_SUMMER:I = 0x52

.field public static final EFFECT_TILT:I = 0x65

.field public static final EFFECT_WATERCOLOR:I = 0x4

.field public static final EFFECT_WINTER:I = 0x54

.field public static final EFFECT_ZOOM_PANNING:I = 0x50

.field private static final EMPTY_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/keyguard_empty_image.jpg"

.field public static final KEYGUARD_DEFAULT_WALLPAPER_TYPE_BRILLIANT:I = 0x1

.field public static final KEYGUARD_WALLPAPER_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardWallpaperService"

.field public static final KEYGUARD_WALLPAPER_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final LOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_lock.ogg"

.field public static final LOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Lock_none_effect.ogg"

.field public static final LOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_lock.ogg"

.field public static final LOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_lock.ogg"

.field public static final LOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_lock.ogg"

.field private static final MSG_CHARGE_STATE_CHANGED:I = 0x12f4

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12f2

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0x12f1

.field private static final MSG_WALLPAPER_PRELOAD_CHANGED:I = 0x12f3

.field public static final MSG_WALLPAPER_TYPE_CHANGED:I = 0x12f0

.field private static final RICH_LOCK_CATEGORIES_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

.field private static final RICH_LOCK_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator"

.field public static final SETTING_KEYGUARD_DEFAULT_WALLPAPER_TYPE_FOR_EFFECT:Ljava/lang/String; = "keyguard_default_wallpaper_type_for_effect"

.field public static final SETTING_KEYGUARD_SET_DEFAULT_WALLPAPER:Ljava/lang/String; = "keyguard_set_default_wallpaper"

.field public static final SETTING_LOCKSCREEN_MONTBLANC_WALLPAPER:Ljava/lang/String; = "lockscreen_montblanc_wallpaper"

.field public static final SLIDING_INTERNAL_EVERY_12HOUR:I = 0x2

.field public static final SLIDING_INTERNAL_EVERY_1HOUR:I = 0x1

.field public static final SLIDING_INTERNAL_EVERY_24HOUR:I = 0x3

.field public static final SLIDING_INTERNAL_SCREENOFF:I = 0x0

.field public static final SlidingWallpaperPath:Ljava/lang/String; = "com.sec.android.slidingGallery"

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewController"

.field public static final UNLOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_unlock.ogg"

.field public static final UNLOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Unlock_none_effect.ogg"

.field public static final UNLOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_unlock.ogg"

.field public static final UNLOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_unlock.ogg"

.field public static final UNLOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_unlock.ogg"

.field private static displayHeight:I

.field private static displayWidth:I

.field private static mOrientation:I

.field private static mSlidingHour:I

.field private static mSlidingInterval:I

.field private static mSlidingMin:I

.field private static mSlidingScreenOffTime:J

.field private static mSlidingTime:J

.field private static mSlidingTotalCount:I

.field private static mSlidingWallpaperIndex:I

.field private static sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

.field public static uriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mAffordanceRect:Landroid/graphics/Rect;

.field private mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

.field private mBackgroundRootLayout:Landroid/widget/FrameLayout;

.field private mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mBgHasAddChargeView:Z

.field private mBootCompleted:Z

.field private mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mCurrentUserId:I

.field private mEmergencyModeStateChanged:Z

.field private mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

.field private mFestivalEffectEnabled:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mForegroundRootLayout:Landroid/widget/FrameLayout;

.field private mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private final mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowing:Z

.field private mIsVisible:Z

.field private mIsWallpaperServiceBound:Z

.field private final mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

.field private mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

.field private mMusicBackgroundSet:Z

.field private mNeedUpdateEffectScreen:Z

.field private mNotificationPanel:Landroid/widget/FrameLayout;

.field private mOldEffect:I

.field private mOldPrimaryEffect:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

.field private mRegisterReceiver:Z

.field private mResetPreviewRunnable:Ljava/lang/Runnable;

.field private mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

.field private mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

.field private mStatusBarGradationView:Landroid/view/View;

.field private mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSwitching:Z

.field private mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

.field private mVisibleNotificationBottom:I

.field protected mWallpaperPath:Ljava/lang/String;

.field private mWallpaperProcessSeparated:Z

.field private mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    sput-wide v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    sput-wide v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsVisible:Z

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBootCompleted:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$4;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$9;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mResetPreviewRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "com.sec.android.slidingGallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardEffectViewMain SlidingWallpaperPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    const-string v1, "2"

    invoke-virtual {v0, v5}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    :goto_0
    new-instance v1, Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperContentObservers()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayHeight:I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEffectProcessSeparated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    :cond_1
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperImageChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->chenckSlidingWallpaperByScreenon()V

    return-void
.end method

.method static synthetic access$1102(J)J
    .locals 0

    sput-wide p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    return-wide p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mResetPreviewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleChargeStateChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    return p1
.end method

.method private static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/high16 v3, 0x40000000    # 2.0f

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    const/4 v7, 0x0

    goto :goto_0
.end method

.method private chenckSlidingWallpaperByScreenon()V
    .locals 5

    const/16 v4, 0x12f2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "edm.intent.action.internal.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.sec.android.gallery3d.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method private createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ClassNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NoSuchMethodException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SecurityException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " InstantiationException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception v2

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IllegalAccessException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v2

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_6
    move-exception v2

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " InvocationTargetException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCounterEffectName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getCounterEffectName"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ClassNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NoSuchMethodException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SecurityException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IllegalAccessException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception v2

    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IllegalArgumentException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v2

    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " InvocationTargetException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCurrentSeasonEffect()I
    .locals 14

    const/4 v3, 0x0

    new-instance v6, Landroid/text/format/Time;

    const-string v9, "GMT+8"

    invoke-direct {v6, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    iget v8, v6, Landroid/text/format/Time;->year:I

    iget v9, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v9, 0x1

    iget v1, v6, Landroid/text/format/Time;->monthDay:I

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x400ef5c28f5c28f6L    # 3.87

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v4, v10

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x4016147ae147ae14L    # 5.52

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v5, v10

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x401e000000000000L    # 7.5

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v0, v10

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x401dc083126e978dL    # 7.438

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v7, v10

    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    if-lt v1, v4, :cond_1

    const/16 v3, 0x51

    :cond_0
    :goto_0
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CurrentSeason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/16 v3, 0x54

    goto :goto_0

    :cond_2
    const/4 v9, 0x2

    if-ge v9, v2, :cond_3

    const/4 v9, 0x5

    if-ge v2, v9, :cond_3

    const/16 v3, 0x51

    goto :goto_0

    :cond_3
    const/4 v9, 0x5

    if-ne v2, v9, :cond_5

    if-lt v1, v5, :cond_4

    const/16 v3, 0x52

    goto :goto_0

    :cond_4
    const/16 v3, 0x51

    goto :goto_0

    :cond_5
    const/4 v9, 0x5

    if-ge v9, v2, :cond_6

    const/16 v9, 0x8

    if-ge v2, v9, :cond_6

    const/16 v3, 0x52

    goto :goto_0

    :cond_6
    const/16 v9, 0x8

    if-ne v2, v9, :cond_8

    if-lt v1, v0, :cond_7

    const/16 v3, 0x53

    goto :goto_0

    :cond_7
    const/16 v3, 0x52

    goto :goto_0

    :cond_8
    const/16 v9, 0x8

    if-ge v9, v2, :cond_9

    const/16 v9, 0xb

    if-ge v2, v9, :cond_9

    const/16 v3, 0x53

    goto :goto_0

    :cond_9
    const/16 v9, 0xb

    if-ne v2, v9, :cond_b

    if-lt v1, v7, :cond_a

    const/16 v3, 0x54

    goto :goto_0

    :cond_a
    const/16 v3, 0x53

    goto :goto_0

    :cond_b
    const/16 v9, 0xb

    if-gt v2, v9, :cond_c

    const/4 v9, 0x2

    if-ge v2, v9, :cond_0

    :cond_c
    const/16 v3, 0x54

    goto :goto_0
.end method

.method private getDataFromSlideshow(Landroid/content/Context;)V
    .locals 14

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_mode"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "ultra_powersaving_mode"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v5, 0x1

    :goto_1
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EMMode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",UPSMode :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    if-eqz v5, :cond_4

    :cond_0
    const/4 v10, 0x0

    sput-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "content://com.samsung.slidinggallery"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v10, "getData"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v10, v11, v12}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v10, "interval"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const-string v10, "imgCount"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    const-string v10, "time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    const-string v10, "hour"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    const-string v10, "minute"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    sget-wide v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "HH"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "mm"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    sget v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "hh"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    const-string v10, "uriArray"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    sput-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "interval: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "imgCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSlidingTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Hour :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Min:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uriStr: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    sput-object v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    goto/16 :goto_2
.end method

.method private getEffectClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "LiveWallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.keyguard.sec.rich.KeyguardEffectView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "Spring"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Summer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Autumn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Winter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Seasonal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.keyguard.sec.effect.KeyguardEffectView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getEffectName(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isZoomPanningEffectEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ZoomPanning"

    :goto_0
    return-object v2

    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v2, "OpenTheme"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sparse-switch p1, :sswitch_data_0

    const-string v1, "None"

    :goto_2
    move-object v2, v1

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const-string v1, "None"

    goto :goto_2

    :sswitch_2
    const-string v1, "RippleInk"

    goto :goto_2

    :sswitch_3
    const-string v1, "LensFlare"

    goto :goto_2

    :sswitch_4
    const-string v1, "ParticleSpace"

    goto :goto_2

    :sswitch_5
    const-string v1, "WaterColor"

    goto :goto_2

    :sswitch_6
    const-string v1, "Blind"

    goto :goto_2

    :sswitch_7
    const-string v1, "MassTension"

    goto :goto_2

    :sswitch_8
    const-string v1, "MassRipple"

    goto :goto_2

    :sswitch_9
    const-string v1, "BrilliantRing"

    goto :goto_2

    :sswitch_a
    const-string v1, "BrilliantCut"

    goto :goto_2

    :sswitch_b
    const-string v1, "IndigoDiffusion"

    goto :goto_2

    :sswitch_c
    const-string v1, "AbstractTile"

    goto :goto_2

    :sswitch_d
    const-string v1, "GeometricMosaic"

    goto :goto_2

    :sswitch_e
    const-string v1, "WaterDroplet"

    goto :goto_2

    :sswitch_f
    const-string v1, "SparklingBubbles"

    goto :goto_2

    :sswitch_10
    const-string v1, "ColourDroplet"

    goto :goto_2

    :sswitch_11
    const-string v1, "Spring"

    goto :goto_2

    :sswitch_12
    const-string v1, "Summer"

    goto :goto_2

    :sswitch_13
    const-string v1, "Autumn"

    goto :goto_2

    :sswitch_14
    const-string v1, "Winter"

    goto :goto_2

    :sswitch_15
    const-string v1, "Seasonal"

    goto :goto_2

    :sswitch_16
    const-string v1, "LiveWallpaper"

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x51 -> :sswitch_11
        0x52 -> :sswitch_12
        0x53 -> :sswitch_13
        0x54 -> :sswitch_14
        0x55 -> :sswitch_15
        0x64 -> :sswitch_16
    .end sparse-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** KeyguardEffectView create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    return-object v0
.end method

.method public static getInstanceIfExists(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
    .locals 2

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** KeyguardEffectView getInstanceIfExists ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    return-object v0
.end method

.method public static getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 12

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getScaledBitmapDrawable Path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "/system/wallpaper/keyguard_empty_image.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v8}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSlidingWallpaperDegree(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x4

    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x0

    invoke-static {v4, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    sget v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    if-lez v9, :cond_1

    sget v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOrientation:I

    invoke-static {v5, v9}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_1
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getScaledBitmapDrawable File = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,canRead() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempBitmap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :try_start_2
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_1
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    move-object v7, v6

    goto/16 :goto_0

    :cond_3
    :try_start_4
    sget v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayWidth:I

    sget v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->displayHeight:I

    const/4 v11, 0x1

    invoke-static {v5, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_4
.end method

.method private getSeasonalLockSoundPath(IZ)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p2, :cond_0

    const-string v0, "/system/media/audio/ui/spring_lock.ogg"

    goto :goto_0

    :cond_0
    const-string v0, "/system/media/audio/ui/spring_unlock.ogg"

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    const-string v0, "/system/media/audio/ui/summer_lock.ogg"

    goto :goto_0

    :cond_1
    const-string v0, "/system/media/audio/ui/summer_unlock.ogg"

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    const-string v0, "/system/media/audio/ui/autumn_lock.ogg"

    goto :goto_0

    :cond_2
    const-string v0, "/system/media/audio/ui/autumn_unlock.ogg"

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_3

    const-string v0, "/system/media/audio/ui/winter_lock.ogg"

    goto :goto_0

    :cond_3
    const-string v0, "/system/media/audio/ui/winter_unlock.ogg"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getSlidingWallpaperDegree(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlidingWallpaperIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , uriArray.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget-object v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    sput v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    :cond_0
    sget-object v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    sget v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "/system/wallpaper/keyguard_empty_image.jpg"

    :cond_1
    :goto_0
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlidingWallpaperPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const-string v2, "/system/wallpaper/keyguard_empty_image.jpg"

    goto :goto_0
.end method

.method private handleChargeStateChange()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private handleFestivalEffect()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isCommonDayShowFestivalWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eq v3, v0, :cond_3

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFestivalEffect mIsShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isUnlockEffectEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getUnlockEffectView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const/16 v2, 0x55

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private handleSetGradationLayer()V
    .locals 6

    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_4

    :goto_0
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreloadedWallpaper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncherWithoutSecure(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    sget v2, Lcom/android/keyguard/R$drawable;->gradation_indi_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    goto :goto_1
.end method

.method private handleWallpaperImageChanged()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_zoom_panning_effect"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->shouldShowAttributionInfoView()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isZoomPanningEffectEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleShowSlideEffect()V

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->changeEffectType()V

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateMontblancEffectType()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperSlider(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperSlider(Z)V

    goto :goto_1
.end method

.method private handleWallpaperTypeChanged()V
    .locals 7

    const/4 v6, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperType:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleFestivalEffect()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v1

    if-eq v3, v1, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "KeyguardEffectViewController"

    const-string v4, "Remove whiteLockscreenWallpaper value due to !WALLPAPER_TYPE_FILE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v4, :cond_8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldEffect:I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldEffect:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->reloadLockSound()V

    :cond_6
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->makeEffectViews(IZ)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setLayerAndBitmapForPoppingColorEffect()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :pswitch_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_3

    :pswitch_2
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_3

    :pswitch_3
    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_3

    :cond_8
    const/high16 v2, -0x1000000

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isBackgroundEffect(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "isBackgroundEffect"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ClassNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NoSuchMethodException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SecurityException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IllegalAccessException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IllegalArgumentException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " InvocationTargetException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isLockScreenEffect(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0x50

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_0

    const/16 v1, 0x65

    if-eq p0, v1, :cond_0

    const/16 v1, 0x51

    if-eq p0, v1, :cond_0

    const/16 v1, 0x52

    if-eq p0, v1, :cond_0

    const/16 v1, 0x53

    if-eq p0, v1, :cond_0

    const/16 v1, 0x54

    if-eq p0, v1, :cond_0

    const/16 v1, 0x55

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeEffectViews(IZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-nez v1, :cond_11

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    if-eqz v5, :cond_11

    :cond_1
    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v5, :cond_8

    const/4 v4, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    const-string v5, "LiveWallpaper"

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "None"

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isBackgroundEffect(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCounterEffectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_6

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :goto_2
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUnlockEffectView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    move-object v4, v1

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_2

    :cond_8
    const-string v5, "None"

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :goto_3
    if-nez v2, :cond_a

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    iput-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_0

    :cond_9
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v2

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isBackgroundEffect(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    if-nez p2, :cond_d

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :goto_4
    const-string v5, "KeyguardEffectViewController"

    const-string v6, "Sets backgound view first"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCounterEffectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getEffectClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->createEffectInstance(Ljava/lang/String;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v3

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-ne v5, v2, :cond_10

    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-string v5, "KeyguardEffectViewController"

    const-string v6, "Sets foreground view later"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v5, :cond_c

    const-string v5, "KeyguardEffectViewController"

    const-string v6, "mBackgroundView is not null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v5, v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setBackground()V

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->updateAfterCreation()V

    :cond_c
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setForeground()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUserSwitching:Z

    goto/16 :goto_0

    :cond_d
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    goto :goto_4

    :cond_e
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eq v2, v5, :cond_f

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mOldPrimaryEffect:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-string v5, "KeyguardEffectViewController"

    const-string v6, "Sets foreground view first"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_10
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-string v5, "KeyguardEffectViewController"

    const-string v6, "Sets background view later"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_11
    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0
.end method

.method private setBackground()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, -0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    :cond_2
    const-string v1, "KeyguardEffectViewController"

    const-string v3, "Apply BlendedFilter from setBackground()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v1, v3, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lockscreen_wallpaper_transparent"

    const/4 v4, -0x2

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v0, v2

    :goto_0
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->applyBlendedFilter(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->shouldShowAttributionInfoView()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperSlider(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVignetting:Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->resetBlendedFilter()V

    goto :goto_1
.end method

.method private setForeground()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 18

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mSlidingInterval = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mSlidingWallpaperIndex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget v14, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTotalCount:I

    if-lt v13, v14, :cond_1

    const/4 v13, 0x0

    sput v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    :cond_1
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "results = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mSlidingWallpaperIndex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :pswitch_0
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :pswitch_1
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_2

    const-wide/16 v8, 0x3c

    :cond_2
    :pswitch_2
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_3

    const-wide/16 v8, 0x2d0

    :cond_3
    :pswitch_3
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_4

    const-wide/16 v8, 0x5a0

    :cond_4
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v8

    const-wide/16 v16, 0x3e8

    mul-long v8, v14, v16

    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-wide v16, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sget-wide v14, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    cmp-long v13, v14, v16

    if-lez v13, :cond_5

    sget-wide v14, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    rem-long/2addr v14, v8

    add-long/2addr v10, v14

    :goto_1
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(minutesCount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " minuteThreshold "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v13, v10, v8

    if-ltz v13, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_5
    sget-wide v14, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    rem-long/2addr v14, v8

    sub-long v14, v8, v14

    add-long/2addr v10, v14

    goto :goto_1

    :cond_6
    const-string v13, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "HH"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "hh"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "mm"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",  :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_7
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v5, v13, :cond_0

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_8
    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v4, v13, :cond_0

    sget v13, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final setWallpaperContentObservers()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path_2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_zoom_panning_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "edm.intent.action.internal.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRegisterReceiver:Z

    return-void
.end method

.method private setWallpaperFileObserver()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v1, "com.sec.android.slidingGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    :cond_2
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$7;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0
.end method


# virtual methods
.method public bindWallpaperService()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.keyguard.KeyguardWallpaperService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** Keyguard: can\'t bind to com.android.systemui.keyguard.KeyguardWallpaperService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentUserId:I

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** Keyguard wallpaper service started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "*** Keyguard wallpaper service already started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeEffectType()V
    .locals 5

    const/4 v4, -0x2

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "changeEffectType()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_set_default_wallpaper"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public changeWallpaperByScreenOff()V
    .locals 4

    const/16 v3, 0x12f2

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "changeWallpaperByScreenOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "com.sec.android.slidingGallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "change sliding wallpaper()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->cleanUp()V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->cleanUp()V

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    return-object v0
.end method

.method public getCounterEffectName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultWallpaperTypeForEffect()I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getIsShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    return v0
.end method

.method public getPreviewContainer()Lcom/android/keyguard/sec/KeyguardPreviewContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    return-object v0
.end method

.method public getUnlockDelay()J
    .locals 5

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->getUnlockDelay()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v4, "RemoteException occured while handing getUnlockDelay()"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v2, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v2, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->sendTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardEffectViewController"

    const-string v3, "RemoteException occured while handing handleTouchEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1, p2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->handleUnlock(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing handleUnlock()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateKeyguardMusicBackground(): bmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setContextualWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-nez v1, :cond_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while setContextualWallpaper()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public isBackgroundEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCategoriesWallpaper()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v6, "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    move v2, v3

    :goto_1
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    move v1, v3

    :goto_2
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCategoriesWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isLiveWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isHomeWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method public isFestivalActivated()Z
    .locals 3

    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFestivalActivated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJustLockLiveEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMusicBackgroundSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    return v0
.end method

.method public isRichLockWallpaper()Z
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "/data/data/com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRichLockWallpaper() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isZoomPanningEffectEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isZoomPanningEffectEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public playLockSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->playLockSound()V

    :cond_0
    return-void
.end method

.method public reloadLockSound()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "KeyguardEffectViewController"

    const-string v3, "reloadLockSound()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-interface {v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;->reloadLockSound(Lcom/android/keyguard/sec/effect/LockSoundInfo;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v1

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    invoke-direct {p0, v1, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    sparse-switch v2, :sswitch_data_0

    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewLensFlare;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterColor;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewParticleSpace;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantRing;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewAbstractTile;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0, v2, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v1

    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    invoke-direct {p0, v1, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getSeasonalLockSoundPath(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_1
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x51 -> :sswitch_9
        0x52 -> :sswitch_9
        0x53 -> :sswitch_9
        0x54 -> :sswitch_9
        0x55 -> :sswitch_a
    .end sparse-switch
.end method

.method public removeMusicWallpaper()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setContextualWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v2, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->removeMusicWallpaper()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "KeyguardEffectViewController"

    const-string v3, "RemoteException occured while setContextualWallpaper()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "reset()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->reset()V

    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    if-eqz v1, :cond_9

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "Update screen by User change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNeedUpdateEffectScreen:Z

    :cond_9
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetPreviewView()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mResetPreviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->resetPreviewView()V

    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOff()V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->screenTurnedOn()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->screenTurnedOn()V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing screenTurnedOn()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAttributionInfoView(Lcom/android/keyguard/sec/SecAttributionInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateAttributionInfoView()V

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    if-eqz p4, :cond_0

    check-cast p4, Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iput-object p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method public setFestivalKeyguardShowing(ZI)V
    .locals 6

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFestivalKeyguardShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 4

    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHidden = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->setHidden(Z)V

    :cond_4
    if-nez p1, :cond_5

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsVisible:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing setHidden(false)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setKeyguardShowing(ZZ)V
    .locals 6

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeyguardShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->reset()V

    :goto_0
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsShowing:Z

    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setFestivalKeyguardShowing(ZI)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->show()V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setHidden(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "KeyguardEffectViewController"

    const-string v3, "RemoteException occured while COMMAND_SET_WINDOW_ANIM"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_5

    if-eqz p2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->cleanUp()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "KeyguardEffectViewController"

    const-string v3, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    if-eqz v2, :cond_5

    const-string v2, "KeyguardEffectViewController"

    const-string v3, "setKeyguardShowing: **** SHOWN CALLED to turn on forcingly ****"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    invoke-interface {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;->screenOn()V

    goto :goto_3
.end method

.method public setLayerAndBitmapForPoppingColorEffect()V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->setLayers(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setLiveWallpaperBg(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v2, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLiveWallpaperBg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    check-cast v1, Lcom/android/keyguard/sec/effect/EffectBehindView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/effect/EffectBehindView;->setLiveWallpaperBg(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLockSoundChangeCallback(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->reloadLockSound()V

    return-void
.end method

.method public setPreviewView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewView(Z)V

    :cond_0
    return-void
.end method

.method public setScreenOnCallback(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isKeyguardEffectViewWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setKeyguardWallpaperShowCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while setKeyguardWallpaperShowCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setVisibleNotificationBottom(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    return-void
.end method

.method public setWallpaperSlider(Z)V
    .locals 3

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-nez v0, :cond_0

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "add WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "remove WallpaperSlider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mRichSliderView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->notifyWallpaperStateChanged()V

    goto :goto_0
.end method

.method public shouldShowAttributionInfoView()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "show()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->bindWallpaperService()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->GetScreenState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->show()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing screenTurnedOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMovableAffordance()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    if-lez v1, :cond_0

    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnlockAffordance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mVisibleNotificationBottom:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing showUnlockAffordance()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPreviewAnimation(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v1, :cond_1

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "startPreviewAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "KeyguardEffectViewController"

    const-string v2, "COMMAND_REMOVE_WINDOW_ANIM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$8;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$8;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->startAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while COMMAND_REMOVE_WINDOW_ANIM"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized unbindWallpaperService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mIsWallpaperServiceBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** Keyguard wallpaper service unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** Keyguard wallpaper service already unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperProcessSeparated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mForegroundCircleShortcutView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->update()V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "RemoteException occured while handing update()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateAfterCreation()V
    .locals 0

    return-void
.end method

.method public updateAttributionInfoView()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/SecAttributionInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecAttributionInfoView;->update()V

    goto :goto_0
.end method

.method public updateIsAdminWallpaper()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$10;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$10;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateMontblancEffectType()V
    .locals 6

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    instance-of v2, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_montblanc_wallpaper"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->settingsForImageType(I)V

    :cond_1
    return-void
.end method
