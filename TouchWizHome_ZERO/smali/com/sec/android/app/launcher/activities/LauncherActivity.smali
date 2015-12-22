.class public Lcom/sec/android/app/launcher/activities/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
.implements Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/LauncherActivity$26;,
        Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;,
        Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;,
        Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;,
        Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;,
        Lcom/sec/android/app/launcher/activities/LauncherActivity$AccessibilityGestureHandler;,
        Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;,
        Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;,
        Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;,
        Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;
    }
.end annotation


# static fields
.field static final ADD_TOAST_POPUP_DISMISSED_KEY:Ljava/lang/String; = "add.toast.popup.dismissed.key"

.field private static final ANGLE_120:I = 0x78

.field private static final ANGLE_60:I = 0x3c

.field private static final ANGLE_M30:I = -0x1e

.field private static final ANGLE_P30:I = 0x1e

.field public static final APPWIDGET_HOST_ID:I = 0x400

.field private static final A_DAY_IN_MILLIS:J = 0x5265c00L

.field public static final BRIGHTNESS_REMOVE_TEXT_SHADOW:F = 0.4f

.field public static final DARK_TEXT_COLOR:I = 0x1

.field private static final DEBUGGABLE:Z

.field private static final DEBUG_BACKGROUND_VIEW:Z = true

.field public static final DIR_DOWN:I = 0x5

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x3

.field public static final DIR_SHORTEST:I = 0x1

.field public static final DIR_UP:I = 0x4

.field static final DISABLE_TOAST_POPUP_DISMISSED_KEY:Ljava/lang/String; = "disable.toast.popup.dismissed.key"

.field public static final EXTRA_ENTER_SCREEN_GRID:Ljava/lang/String; = "extra_enter_screen_grid"

.field private static final EXTRA_VISIBLE_FRAGMENT:Ljava/lang/String; = "extra_visible_fragment"

.field public static final HEADLINES_INTENT:Landroid/content/Intent;

.field public static final HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

.field public static final INVALID_DIR:I = 0x0

.field public static final LAUNCHER_APPS_FRAGMENT:I = 0x1

.field public static final LAUNCHER_HOME_FRAGMENT:I = 0x0

.field public static final LAUNCHER_SETTINGS_PREF_FRAGMENT:I = 0x3

.field public static final LAUNCHER_WIDGET_FRAGMENT:I = 0x2

.field public static final LAUNCHER_ZEROPAGE_LIST_FRAGMENT:I = 0x4

.field public static final LIGHT_TEXT_COLOR:I = 0x0

.field static final MAGAZINE_PREFERENCE_KEY:Ljava/lang/String; = "my_magazine"

.field public static OPTIMIZATION_MODE_MEMORY:I = 0x0

.field public static OPTIMIZATION_MODE_PERFORMANCE:I = 0x0

.field public static final PREFERENCES:Ljava/lang/String; = "com.sec.android.app.launcher.prefs"

.field private static final PREFERENCES2:Ljava/lang/String; = "com.sec.android.app.launcher_preferences"

.field static final PREFERENCES_BACKGROUND_VIEW_BLUR_STATE:Ljava/lang/String; = "background_view_blur_state"

.field static final PREFERENCES_BACKGROUND_VIEW_COLOR_MODULATION_STATE:Ljava/lang/String; = "background_view_color_modulation_state"

.field static final PREFERENCES_BLUR_WALLPAPER_ENABLE:Ljava/lang/String; = "blur_wall_paper_enable"

.field public static final PREFERENCES_NEED_DARK_FONT:Ljava/lang/String; = "need_dark_font"

.field static final PREFERENCES_PARALLAXE_EFFECT_ENABLE:Ljava/lang/String; = "parallax_effect_enable"

.field static final PREFERENCES_POWER_SAVING_MODE_ENABLE:Ljava/lang/String; = "power_saving_mode_enable"

.field static final PREFERENCES_TEXTURE_SCALE_RATIO:Ljava/lang/String; = "texture_scale_ratio"

.field static final PREFERENCES_WEATHER_EFFECT_ENABLE:Ljava/lang/String; = "weather_effect_enable"

.field public static final REQUEST_CODE_UNINSTALL_PACKAGE:I = 0x6f

.field public static final REQUEST_PICK_WALLPAPER:I = 0xa

.field public static final REQ_BIND_WIDGET:I = 0x1

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETTINGS_WALLPAPER_TILT_STATUS:Ljava/lang/String; = "wallpaper_tilt_status"

.field private static final TAG:Ljava/lang/String; = "LauncherActivity"

.field private static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field private static final WALLPAPER:Ljava/lang/String; = "WALLPAPER"

.field private static final WIDGET_RESIZE_UPDATE_PAUSE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_PAUSE"

.field private static final WIDGET_RESIZE_UPDATE_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field private static gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field public static isZeropageDual:Z

.field public static iszerofile:Z

.field public static mIsDragAndDrop:Z

.field public static mIsRestartModeChange:Z

.field private static mMobileKeyboardConfig:I

.field public static mOrientation:I

.field public static mRemovablePreloadAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mStartScreenGrid:Z

.field private static sIsHeadlinesAppEnable:Z


# instance fields
.field private final HOVERSCROLL_SPEED:J

.field private final PAGE_HOVER_SCROLL:I

.field public SUPPORT_TILT_WALLPAPER:Z

.field bIsCamerastarted:Z

.field private currentPageStartingScroll:I

.field isSideCameraReady:Z

.field private largeCursorState:Landroid/database/ContentObserver;

.field private mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

.field private mAccessibilityEnabled:Z

.field private mActivityRoot:Landroid/view/ViewGroup;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppLaunchedWithLaunchEffect:Z

.field private mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

.field private mAppsPopupMenu:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

.field private mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

.field private mBlurredBGFadeDuration:F

.field private mBoosterEnabled:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

.field private mCaptureDistance:F

.field private mCaptureflag:Z

.field private mCheckTheme:Z

.field private mDarkenView:Lcom/sec/daliviews/views/ClippedContainerView;

.field private mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

.field private mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDebugReceiver:Lcom/sec/daliviews/debug/DebugServerReceiver;

.field private mDestroyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDimView:Lcom/sec/daliviews/views/ContainerView;

.field private mDownMotionX:F

.field private mDpiScale:F

.field private mEffects:Lcom/sec/android/app/launcher/activities/LauncherEffects;

.field private mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

.field private mFolderLowerBoundary:I

.field private mFolderMaxX:I

.field private mFolderMinX:I

.field private mFolderModes:Lcom/sec/daliviews/views/ModedView;

.field private mFolderUpperBoundary:I

.field private mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

.field public mGesture:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

.field private mHomeItemModes:Lcom/sec/daliviews/views/ModedView;

.field private mHomeKeyPressedIntent:Landroid/content/Intent;

.field private mHomeResizeFrame:Lcom/sec/android/app/launcher/views/HomeResizeFrame;

.field private mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

.field private mHostContainer:Landroid/view/ViewGroup;

.field private mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

.field private mHoverDirection:I

.field private mHoverScrollBottom:I

.field private mHoverScrollDir:I

.field private mHoverScrollHandler:Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;

.field private mHoverScrollTop:I

.field private mHoverScrollWidth:I

.field private mIsHomeKeyPressed:Z

.field public mIsRotating:Z

.field public mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

.field private mLastHoverDirection:I

.field private mLastTime:J

.field private mLaunchEffect:Lcom/sec/daliviews/effects/LaunchEffect;

.field private mLaunchEffectEnabled:Z

.field mLongPress:Z

.field private mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

.field private mMaximumVelocity:I

.field private mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

.field private mNeedDarkFontSettingsChanged:Landroid/database/ContentObserver;

.field mOnCreate:Z

.field private mOnStarted:Z

.field private mPanGestureMinMotionPixel:I

.field private mParallaxAnim:Lcom/sec/daliviews/animation/TranslateAnimation;

.field private mParallaxBackgroundX:F

.field private mParallaxBackgroundY:F

.field private mParallaxEffectEnabled:Z

.field private mParallaxIconsX:F

.field private mParallaxIconsY:F

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPeopleEdgeChangeReceiver:Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;

.field private mPostCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mResultListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResumed:Z

.field private mRootView:Lcom/sec/daliviews/views/ContainerView;

.field mSavedState:Landroid/os/Bundle;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScrollByHover:Z

.field private mSensorEventListener:Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mShortPress:Z

.field private mSideTouchEnabled:Z

.field private mSnapVelocity:I

.field private mStandardBG:Landroid/graphics/Bitmap;

.field private mSurfaceCreated:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field public mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

.field private mToast:Landroid/widget/Toast;

.field private mUninstalledItem:Lcom/sec/android/app/launcher/data/HomeItem;

.field private mUseBlendedFilterForStatusbar:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVisibleFragmentId:I

.field private mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mWallpaperTiltSettingEnabled:Z

.field private mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

.field private mWidgetHost:Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

.field private mWidgetItemsLoading:Z

.field private mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

.field private mWindowToken:Landroid/os/IBinder;

.field private mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

.field private mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

.field orientationAngle:I

.field private pressHomeKeyInLauncher:Z

.field tiltAngle:I

.field tiltAngleX:I

.field tiltAngleY:I

.field tiltAngleZ:I

.field private wallpaperTiltSettingChanged:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->DEBUGGABLE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    sput v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOrientation:I

    sput v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->OPTIMIZATION_MODE_MEMORY:I

    sput v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->OPTIMIZATION_MODE_PERFORMANCE:I

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->iszerofile:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HEADLINES_INTENT:Landroid/content/Intent;

    sput-boolean v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sIsHeadlinesAppEnable:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRestartModeChange:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStartScreenGrid:Z

    sput-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsDragAndDrop:Z

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mMobileKeyboardConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x7fffffff

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDestroyListeners:Ljava/util/Set;

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRotating:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mShortPress:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLongPress:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibilityEnabled:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetHost:Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeResizeFrame:Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHostContainer:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResumed:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOnStarted:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceCreated:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mToast:Landroid/widget/Toast;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDpiScale:F

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetItemsLoading:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsHomeKeyPressed:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeKeyPressedIntent:Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUseBlendedFilterForStatusbar:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSideTouchEnabled:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxAnim:Lcom/sec/daliviews/animation/TranslateAnimation;

    iput v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxBackgroundX:F

    iput v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxBackgroundY:F

    iput v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxIconsX:F

    iput v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxIconsY:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLastTime:J

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureflag:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureDistance:F

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TILT_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPeopleEdgeChangeReceiver:Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->pressHomeKeyInLauncher:Z

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOVERSCROLL_SPEED:J

    iput v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->PAGE_HOVER_SCROLL:I

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScrollByHover:Z

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollDir:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollWidth:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollTop:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollBottom:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMinX:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMaxX:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderUpperBoundary:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderLowerBoundary:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverDirection:I

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLastHoverDirection:I

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->DISABLED:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBoosterEnabled:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngle:I

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->orientationAngle:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSavedState:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOnCreate:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBlurredBGFadeDuration:F

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffectEnabled:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffect:Lcom/sec/daliviews/effects/LaunchEffect;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppLaunchedWithLaunchEffect:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCheckTheme:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUninstalledItem:Lcom/sec/android/app/launcher/data/HomeItem;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$1;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$3;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$4;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNeedDarkFontSettingsChanged:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$5;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->largeCursorState:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bIsCamerastarted:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isSideCameraReady:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResultListeners:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPostCommands:Ljava/util/ArrayList;

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngleX:I

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngleY:I

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngleZ:I

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxEffectEnabled:Z

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$20;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$20;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$21;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$22;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$22;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SetLiveIconUpdate()V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v0, "alarm"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x8000000

    invoke-static {v7, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getMidnightInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/data/DataManager;->registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V

    return-void
.end method

.method private TotriggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V
    .locals 9

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Adapter;->getItems()Ljava/util/List;

    move-result-object v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/daliviews/views/Item;

    instance-of v8, v5, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeItemView;->stopAnim()V

    goto :goto_0

    :cond_2
    instance-of v8, v5, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v8, :cond_0

    check-cast v5, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/HomeItemView;->isLiveView()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/views/HomeItemView;->startAnim()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method static synthetic access$100()Lcom/sec/android/app/launcher/activities/LauncherActivity;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/launcher/activities/LauncherActivity;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDownMotionX:F

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/android/app/launcher/activities/LauncherActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->currentPageStartingScroll:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResumed:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/events/NativeEventHitlist;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSideTouchEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxEffectEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/daliviews/views/ContainerView;)Lcom/sec/daliviews/views/ContainerView;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/launcher/activities/LauncherActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->parallaxChangePosition(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/effects/LaunchEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffect:Lcom/sec/daliviews/effects/LaunchEffect;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/HomeFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/AppsFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/WidgetsFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/google/android/hotword/client/HotwordServiceClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->initNativeEvent()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->initDragAndDrop()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->initViewModes()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPanGestureMinMotionPixel:I

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/BackgroundView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/daliviews/views/Adapter;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->TotriggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/LauncherActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->changeTextColorIfNeeded(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureflag:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/sec/android/app/launcher/activities/LauncherActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureflag:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollDir:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/Accessibility;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/android/app/launcher/activities/Accessibility;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBoosterEnabled:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/launcher/activities/LauncherActivity;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method private addRemovablePreloadAppToList()V
    .locals 15

    const/4 v14, 0x1

    const-string v0, "removablepreloadapps"

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc/default_removablepreloadapp_list.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :goto_0
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_1
    if-eq v5, v14, :cond_2

    const/4 v9, 0x4

    if-ne v5, v9, :cond_0

    sget-object v9, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    const-string v9, "removablepreloadapps"

    invoke-static {v8, v9}, Lcom/sec/android/app/launcher/utils/Utils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v8

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :catch_0
    move-exception v4

    :goto_3
    :try_start_3
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v9

    :catchall_1
    move-exception v9

    move-object v1, v2

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v1, v2

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v1, v2

    goto :goto_3
.end method

.method public static bgLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private changeTextColorIfNeeded(I)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->readTextColor()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->changeTextColor(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static colorToVec(I)[F
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v1, 0x4

    new-array v0, v1, [F

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method private destroyViewModes()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeItemModes:Lcom/sec/daliviews/views/ModedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeItemModes:Lcom/sec/daliviews/views/ModedView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ModedView;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeItemModes:Lcom/sec/daliviews/views/ModedView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderModes:Lcom/sec/daliviews/views/ModedView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderModes:Lcom/sec/daliviews/views/ModedView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ModedView;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderModes:Lcom/sec/daliviews/views/ModedView;

    :cond_1
    invoke-static {}, Lcom/sec/daliviews/views/ModedView;->deletesmode()V

    return-void
.end method

.method private dropWallPaper()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/BackgroundView;->unparentAndDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private getCurrentFragment()Lcom/sec/android/app/launcher/activities/FragmentBase;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getMidnightInMillis()J
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getOptimizationMode()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getOptimizationMode()I

    move-result v0

    return v0
.end method

.method public static getOrientation()I
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOrientation:I

    return v0
.end method

.method public static getViewInflater()Lcom/sec/daliviews/views/ViewInflater;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v0}, Lcom/sec/daliviews/views/ViewInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetHost:Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    return-object v0
.end method

.method private initDragAndDrop()V
    .locals 22

    invoke-static/range {p0 .. p0}, Lcom/sec/daliviews/views/ViewInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v18

    const v19, 0x7f030015

    invoke-virtual/range {v18 .. v19}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v9

    check-cast v9, Lcom/sec/daliviews/views/ClippedContainerView;

    const v18, 0x7f0b00db

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/sec/daliviews/views/ClippedContainerView;->setDefaultMode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-static {v9}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->Create(Lcom/sec/daliviews/views/ContainerView;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v18, 0x7f080001

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->enableDragViewToCenter(Z)V

    const v18, 0x7f0a0058

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v12, v0

    const v18, 0x7f0a0059

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v13, v0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setDragViewOffset(FF)V

    :cond_0
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragContainer()Lcom/sec/daliviews/views/ContainerView;

    move-result-object v10

    new-instance v18, Lcom/sec/android/app/launcher/activities/LauncherActivity$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$6;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/sec/daliviews/views/ContainerView;->setOnTouchListener(Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;)V

    new-instance v18, Lcom/sec/android/app/launcher/activities/LauncherActivity$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$7;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/sec/daliviews/views/ContainerView;->setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v7

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->tempEnableShrinkEffect(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0250

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0239

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v14

    invoke-virtual {v7, v15, v14}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->configureShrinkEffect(FF)V

    invoke-virtual {v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setDragListener(Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setDisplacedItemsListener(Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;)V

    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a005a

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v17 .. v17}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a005c

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v17 .. v17}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a005b

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v17 .. v17}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    invoke-static {v4, v6, v5}, Lcom/sec/daliviews/views/NativeViewBase;->configureDancing(FFF)V

    return-void
.end method

.method private initManagedProfileState()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    return-void
.end method

.method private initNativeEvent()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    new-instance v9, Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-direct {v9}, Lcom/sec/daliviews/events/NativeEventHitlist;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0049

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0297

    invoke-virtual {v9, v10, v6, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mmToPixels(F)I

    move-result v1

    const-string v9, "LauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "long slope="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "px"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a029c

    invoke-virtual {v9, v10, v6, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mmToPixels(F)I

    move-result v8

    const-string v9, "LauncherActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tap slope="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "px"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0048

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0296

    invoke-virtual {v9, v10, v7, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a029a

    invoke-virtual {v9, v10, v5, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mmToPixels(F)I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    int-to-float v10, v4

    invoke-virtual {v9, v10}, Lcom/sec/daliviews/events/NativeEventHitlist;->setPinchExclusionDistance(F)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-virtual {v9, v13, v13, v14, v14}, Lcom/sec/daliviews/events/NativeEventHitlist;->surfaceChanged(FFII)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-virtual {v9, v2, v1}, Lcom/sec/daliviews/events/NativeEventHitlist;->setLongPressParams(II)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-virtual {v9, v8}, Lcom/sec/daliviews/events/NativeEventHitlist;->setTapParams(I)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-virtual {v9, v0, v3}, Lcom/sec/daliviews/events/NativeEventHitlist;->setPointerPrediction(IF)V

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v10, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;

    invoke-direct {v10, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$8;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initViewModes()V
    .locals 13

    const/4 v9, 0x4

    const/4 v7, 0x0

    const v8, 0x1ffffff

    invoke-static {p0}, Lcom/sec/daliviews/views/ViewInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v6, 0x7f030043

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ModedView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeItemModes:Lcom/sec/daliviews/views/ModedView;

    const v0, 0x7f0b0003

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeItemModes:Lcom/sec/daliviews/views/ModedView;

    invoke-static {v0, v6}, Lcom/sec/daliviews/views/ModedView;->addModes(ILcom/sec/daliviews/views/ModedView;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeItemModes:Lcom/sec/daliviews/views/ModedView;

    invoke-virtual {v0, v9}, Lcom/sec/daliviews/views/ModedView;->setVisibility(I)V

    invoke-static {p0}, Lcom/sec/daliviews/views/ViewInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v6, 0x7f030048

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ModedView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderModes:Lcom/sec/daliviews/views/ModedView;

    const v0, 0x7f0b0002

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderModes:Lcom/sec/daliviews/views/ModedView;

    invoke-static {v0, v6}, Lcom/sec/daliviews/views/ModedView;->addModes(ILcom/sec/daliviews/views/ModedView;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderModes:Lcom/sec/daliviews/views/ModedView;

    invoke-virtual {v0, v9}, Lcom/sec/daliviews/views/ModedView;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    sget-object v6, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    sget-object v6, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v1

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getAppsTextColor()I

    move-result v2

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getFolderStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$FolderStyle;->getTextColor(I)I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getAppTitleBg()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getBadgeTextColor()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextStyleForModedView(IIIILandroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "need_dark_font"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeStyle()Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v1

    const/4 v11, 0x0

    move-object v6, p0

    move v7, v1

    move v9, v8

    move v10, v8

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextStyleForModedView(IIIILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initWidgetHost()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetHost:Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetHost:Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;->startListeningNoException()V

    return-void
.end method

.method public static instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-object v0
.end method

.method private mmToPixels(F)I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, v1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    const v3, 0x41cb3333    # 25.4f

    div-float v3, p1, v3

    mul-float v2, v3, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method private notifyDestroy()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDestroyListeners:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDestroyListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;

    invoke-interface {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;->onActivityDestroyed()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDestroyListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private parallaxChangePosition(II)V
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLastTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    iget-wide v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLastTime:J

    sub-long v2, v0, v6

    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v4, v5, v6

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxBackgroundX:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxBackgroundY:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    int-to-float v6, p1

    iget v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxBackgroundX:F

    mul-float/2addr v6, v7

    int-to-float v7, p2

    iget v8, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxBackgroundY:F

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7, v4}, Lcom/sec/daliviews/views/BackgroundView;->animateBackgroundOffset(FFF)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxIconsX:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_2

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxIconsY:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxAnim:Lcom/sec/daliviews/animation/TranslateAnimation;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxAnim:Lcom/sec/daliviews/animation/TranslateAnimation;

    invoke-virtual {v5}, Lcom/sec/daliviews/animation/TranslateAnimation;->stop()V

    :cond_3
    new-instance v5, Lcom/sec/daliviews/animation/TranslateAnimation;

    invoke-direct {v5}, Lcom/sec/daliviews/animation/TranslateAnimation;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxAnim:Lcom/sec/daliviews/animation/TranslateAnimation;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxAnim:Lcom/sec/daliviews/animation/TranslateAnimation;

    int-to-float v6, p1

    iget v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxIconsX:F

    mul-float/2addr v6, v7

    int-to-float v7, p2

    iget v8, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxIconsY:F

    mul-float/2addr v7, v8

    invoke-virtual {v5, v6, v7, v10}, Lcom/sec/daliviews/animation/TranslateAnimation;->setTranslateTo(FFF)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxAnim:Lcom/sec/daliviews/animation/TranslateAnimation;

    long-to-int v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/daliviews/animation/TranslateAnimation;->setPlayback(III)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxAnim:Lcom/sec/daliviews/animation/TranslateAnimation;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/animation/TranslateAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_4
    iput-wide v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLastTime:J

    return-void
.end method

.method private performPause()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResumed:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bIsCamerastarted:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.HOME_PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private performStop()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOnStarted:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->runWeatherTask(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->dropWallPaper()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->getInitialised()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->hasInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDraggedItem()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    :cond_2
    instance-of v1, v0, Lcom/sec/daliviews/views/TextureView;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/effects/GlowEffect;->remove(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_3
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->onStop()V

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOnStarted:Z

    goto :goto_0
.end method

.method private registerAccessibilityGestureListener()V
    .locals 12

    const-string v8, "accessibility"

    invoke-virtual {p0, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    new-instance v4, Lcom/sec/android/app/launcher/activities/LauncherActivity$AccessibilityGestureHandler;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$AccessibilityGestureHandler;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v8, "registerGestureListenerForLauncher"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/os/IBinder;

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x1

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v1, v8

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private relayoutAllViews(Z)V
    .locals 3

    const-string v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile Keyboard : relayoutAllViews - mobileKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->reinitViewModes()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->surfaceChanged()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->surfaceChanged()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->surfaceChanged()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->checkValidSizeOnMobileKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    const-string v0, "LauncherActivity"

    const-string v1, "Mobile Keyboard : relayoutAllViews - VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setMainHomeScreenshot()V

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sec/android/app/launcher/utils/GyroForShadow;->changeTiltXYRange()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerView;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/LayoutBase;->layoutViews()V

    :cond_8
    const-string v0, "LauncherActivity"

    const-string v1, "Mobile Keyboard : relayoutAllViews - end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setTakescreenshot()V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$12;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$13;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private resetSurfaceWidgetPackageManager()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->clearWidgetInstances()V

    :cond_0
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUseBlendedFilterForStatusbar:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x7c000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc00

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static setOptimizationMode(I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setOptimizationMode(Landroid/content/Context;I)V

    return-void
.end method

.method private setRingerMode(Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_2
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method

.method private setTextStyle(Lcom/sec/daliviews/views/TextView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/sec/daliviews/views/TextView;->setDefaultTextColor(I)V

    return-void
.end method

.method private setupSurface()V
    .locals 2

    const v0, 0x7f0b00cc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-static {p0}, Lcom/sec/daliviews/views/NativeViewBase;->setTouchFeedback(Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;)V

    return-void
.end method

.method private unregisterAcessibilityGestureListener()V
    .locals 6

    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "unregisterGestureListenerForLauncher"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method BitmapCompress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$23;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$23;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method SetupLauncherActivity()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOnCreate:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOnCreate:Z

    sget v5, Lcom/sec/android/app/launcher/activities/LauncherActivity;->OPTIMIZATION_MODE_MEMORY:I

    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setOptimizationMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0b00c9

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/HomeFragment;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0b00ca

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/AppsFragment;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0b00cb

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0b00ce

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0b00cd

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    new-instance v5, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    invoke-direct {v5, p0}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsPopupMenu:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setHomeFragment(Lcom/sec/android/app/launcher/activities/HomeFragment;)V

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUseBlendedFilterForStatusbar:Z

    if-nez v5, :cond_1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setSystemUiTransparency(Z)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setHomeFragment(Lcom/sec/android/app/launcher/activities/HomeFragment;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a029b

    invoke-virtual {v5, v6, v3, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mmToPixels(F)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPanGestureMinMotionPixel:I

    const-string v5, "LauncherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scroll Move Slop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPanGestureMinMotionPixel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "px"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDpiScale:F

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSideTouchEnabled:Z

    if-eqz v5, :cond_2

    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    new-instance v5, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

    invoke-direct {v5, p0, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/android/app/launcher/activities/LauncherActivity$1;)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorEventListener:Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorEventListener:Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a004d

    invoke-virtual {v5, v6, v2, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBlurredBGFadeDuration:F

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1
.end method

.method public StartZeroImageObserver()V
    .locals 9

    const-string v1, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

    const-string v2, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

    new-instance v0, Ljava/io/File;

    const-string v7, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v7, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v7, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    move-object v5, v6

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    if-nez v7, :cond_3

    new-instance v7, Lcom/sec/android/app/launcher/activities/LauncherActivity$24;

    const-string v8, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

    invoke-direct {v7, p0, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity$24;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    invoke-virtual {v7}, Landroid/os/FileObserver;->startWatching()V

    return-void

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v5, v6

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_4
    throw v7

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_5
    const/4 v7, 0x1

    sput-boolean v7, Lcom/sec/android/app/launcher/activities/LauncherActivity;->iszerofile:Z

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method public addViewToScene(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public announce(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibilityEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->setContentDescription(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setContentDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public announceByTalkback(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/launcher/utils/Talk;->INSTANCE:Lcom/sec/android/app/launcher/utils/Talk;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/launcher/utils/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public blurWallpaper(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedBlurWallpaperEnableState()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$15;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPostCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public callAppFolderRemoveDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->createAndShow(Landroid/app/FragmentManager;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;

    move-result-object v0

    return-object v0
.end method

.method public callDisableDialog(Lcom/sec/android/app/launcher/data/HomeItem;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->shouldDisablePopupRepeat()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v4, p1, v5, v6}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/app/FragmentManager;Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->shouldDisablePopupRepeat()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, p1, v5, v6}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/app/FragmentManager;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/sec/daliviews/views/Item;Landroid/app/FragmentManager;)V

    goto :goto_1
.end method

.method public changeHomeScreenMode()V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_0

    sput-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRestartModeChange:Z

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getCurrentDBHomeOnlyMode()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v7

    if-nez v1, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/sec/android/app/launcher/activities/LauncherApp;->writeHomeOnlyModeEnabled(Z)V

    if-nez v1, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->modeSwitch(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->modeSwitch(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/sec/android/app/launcher/activities/LauncherActivity$25;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$25;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Z)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method public changeWallPaper()V
    .locals 9

    const v8, 0x3f933333    # 1.15f

    sget-object v5, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedBlurWallpaperEnableState()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedWeatherEffectEnableState()Z

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->dropWallPaper()V

    if-nez v0, :cond_2

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setStandardBG()V

    new-instance v5, Lcom/sec/daliviews/views/BackgroundView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBlurredBGFadeDuration:F

    invoke-direct {v5, v6, v7, v0, v4}, Lcom/sec/daliviews/views/BackgroundView;-><init>(Landroid/graphics/Bitmap;FZZ)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/ContainerView;->addBackgroundView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxEffectEnabled:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    invoke-virtual {v5, v8, v8}, Lcom/sec/daliviews/views/BackgroundView;->setBackgroundScale(FF)V

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPostCommands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPostCommands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public changeWallPaperInThread()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$17;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearSelectionArea()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->hideSelection()V

    :cond_0
    return-void
.end method

.method createEffects()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    return-void
.end method

.method public deemSurface(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public deleteScreenBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibilityEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    const/16 v7, 0x52

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v6, 0x43

    if-ne v1, v6, :cond_3

    if-nez v0, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomeFragment;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderOpened()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a004a

    invoke-virtual {v7, v8, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    invoke-direct {v6, v7}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showAppsFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    :cond_1
    move v3, v5

    :cond_2
    :goto_0
    return v3

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v6, v7, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_5
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->clearSelectionArea()V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonVisibility(I)V

    iget-object v6, v2, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->dismiss()V

    iget-object v6, v2, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->show()V

    :cond_7
    :goto_1
    move v3, v5

    goto :goto_0

    :cond_8
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setupWidgetsPopupMenu()V

    goto :goto_1

    :cond_9
    if-nez v3, :cond_2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const v3, 0x8000

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public enableMagazine(Ljava/lang/Boolean;)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "my_magazine"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHeadlines(Z)V

    return-void
.end method

.method public genClick(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/Accessibility;->genClick(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public genLongClick(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/Accessibility;->genLongClick(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public genWindowStateChanged(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/activities/PresenterBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/Accessibility;->genWindowStateChanged(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/activities/PresenterBase;)V

    :cond_0
    return-void
.end method

.method public getAccessibility()Lcom/sec/android/app/launcher/activities/Accessibility;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    return-object v0
.end method

.method public getAccessibilityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibilityEnabled:Z

    return v0
.end method

.method public getAndroidRoot()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    return-object v0
.end method

.method public getAppsIconViewPos()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getAppsIconViewPos()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundViewBlurState()Z
    .locals 5

    const/4 v3, 0x0

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "background_view_blur_state"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "WALLPAPER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring BackgroundView blur state( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bgLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getBackgroundViewColorModulationState()I
    .locals 8

    const/4 v7, 0x0

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "background_view_color_modulation_state"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "WALLPAPER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring BackgroundView color modulation state( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0x%8s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    const/16 v6, 0x30

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bgLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCaptureDistance()F
    .locals 4

    iget v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureDistance:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureDistance:F

    :cond_0
    iget v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureDistance:F

    return v1
.end method

.method public getCheckTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCheckTheme:Z

    return v0
.end method

.method public getCurrentFragmentId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    return v0
.end method

.method public getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->getZeroPageListPresenter()Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getDarkenView()Lcom/sec/daliviews/views/ClippedContainerView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDarkenView:Lcom/sec/daliviews/views/ClippedContainerView;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/daliviews/views/ViewInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ClippedContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDarkenView:Lcom/sec/daliviews/views/ClippedContainerView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDarkenView:Lcom/sec/daliviews/views/ClippedContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ClippedContainerView;->useOwnColor(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDarkenView:Lcom/sec/daliviews/views/ClippedContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDarkenView:Lcom/sec/daliviews/views/ClippedContainerView;

    return-object v0
.end method

.method public getDataManager()Lcom/sec/android/app/launcher/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    return-object v0
.end method

.method public getDimView()Lcom/sec/daliviews/views/ContainerView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDimView:Lcom/sec/daliviews/views/ContainerView;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/daliviews/views/ViewInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ContainerView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDimView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDimView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->addBackgroundView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDimView:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEffects:Lcom/sec/android/app/launcher/activities/LauncherEffects;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherEffects;->getGlowEffect()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v0

    return-object v0
.end method

.method public getGlowEffectForIcons()Lcom/sec/daliviews/effects/GlowEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEffects:Lcom/sec/android/app/launcher/activities/LauncherEffects;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherEffects;->getGlowEffectForIcons()Lcom/sec/daliviews/effects/GlowEffect;

    move-result-object v0

    return-object v0
.end method

.method public getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    return-object v0
.end method

.method public getHomeKeyPressedIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeKeyPressedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getHostContainer()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHostContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHostContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHostContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHostContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHostContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHostContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$2;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHostContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getIsHomeKeyPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsHomeKeyPressed:Z

    return v0
.end method

.method public getIsRotating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRotating:Z

    return v0
.end method

.method public getItemsLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetItemsLoading:Z

    return v0
.end method

.method public getLaunchEffect()Lcom/sec/daliviews/effects/LaunchEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffect:Lcom/sec/daliviews/effects/LaunchEffect;

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen(Lcom/sec/daliviews/layouts/PageLayout;F)I
    .locals 7

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDownMotionX:F

    sub-float/2addr v5, p2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDownMotionX:F

    sub-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v0, v5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/PageLayout;->getCurrentPage()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->currentPageStartingScroll:I

    :cond_0
    iget v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->currentPageStartingScroll:I

    if-eqz v1, :cond_3

    div-int/lit8 v5, v2, 0x3

    if-lt v0, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    :goto_1
    return v4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    div-int/lit8 v5, v2, 0x3

    if-lt v0, v5, :cond_4

    add-int/lit8 v4, v4, -0x1

    :cond_4
    goto :goto_1
.end method

.method public getPopupMenuManager()Lcom/sec/android/app/launcher/activities/AppsPopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsPopupMenu:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    return-object v0
.end method

.method public getResizeFrame()Lcom/sec/android/app/launcher/views/HomeResizeFrame;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeResizeFrame:Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f030050

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeResizeFrame:Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeResizeFrame:Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    const v1, 0x7f020087

    const v2, 0x7f020088

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setBorderNinePatchImages(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeResizeFrame:Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    const v1, 0x7f020089

    const v2, 0x7f02008a

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->setSideImages(Landroid/content/Context;II)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeResizeFrame:Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    return-object v0
.end method

.method public getRootView()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getSavedBlurWallpaperEnableState()Z
    .locals 3

    const/4 v2, 0x0

    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "blur_wall_paper_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getSavedParallaxEffectEnableState()Z
    .locals 3

    const/4 v2, 0x0

    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "parallax_effect_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getSavedPowerSavingModeEnableState()Z
    .locals 3

    const/4 v2, 0x0

    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "power_saving_mode_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getSavedWeatherEffectEnableState()Z
    .locals 3

    const/4 v2, 0x0

    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "weather_effect_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getScreenBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEffects:Lcom/sec/android/app/launcher/activities/LauncherEffects;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/LauncherEffects;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    return-object v0
.end method

.method public getSnapVelocity()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSnapVelocity:I

    int-to-float v0, v0

    return v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getTextureScaleRatio()I
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "texture_scale_ratio"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getVelocityTracker()Landroid/view/VelocityTracker;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const-string v0, "LauncherActivity"

    const-string v1, "mVelocityTracker is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    return-object v0
.end method

.method public getZeroPageListFragment()Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public handleHomePressed(Landroid/content/Intent;)Z
    .locals 11

    const/high16 v10, 0x10000000

    const/high16 v9, 0x400000

    const/high16 v8, 0x200000

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentFragment()Lcom/sec/android/app/launcher/activities/FragmentBase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/2addr v7, v8

    if-eq v7, v8, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/2addr v7, v10

    if-ne v7, v10, :cond_7

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/launcher/activities/FragmentBase;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v7, v8, :cond_5

    iput v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    :goto_1
    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sec/android/app/launcher/activities/FolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/launcher/activities/AlphabeticSortDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sec/android/app/launcher/activities/AlphabeticSortDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v2

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setVisibleValue(Z)V

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/FragmentBase;->onHomePressed()Z

    move-result v1

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    iput v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    :cond_8
    move v5, v6

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->isPopupMenuVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->dismiss()V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->onHomePressed()Z

    goto :goto_3

    :cond_b
    iput v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    goto :goto_3
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAppsTransitionReady()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isTransitionReady()Z

    move-result v0

    goto :goto_0
.end method

.method public isDialogChecked()Z
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "add.toast.popup.dismissed.key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isFocusAttached()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->isFocusAttached()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeadlinesAppEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sIsHeadlinesAppEnable:Z

    return v0
.end method

.method public isHomeTransitionReady()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->isTransitionReady()Z

    move-result v0

    return v0
.end method

.method public isHoveringAreaX(F)I
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    instance-of v7, v4, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v7, :cond_2

    move-object v3, v4

    check-cast v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v2

    :cond_1
    :goto_1
    if-nez v2, :cond_9

    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_5

    iget v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollWidth:I

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_5

    const/4 v7, 0x2

    :goto_2
    return v7

    :cond_2
    instance-of v7, v4, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v7, :cond_3

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    goto :goto_0

    :cond_3
    instance-of v7, v4, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v7, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    if-eqz v3, :cond_7

    :try_start_0
    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/views/PageView;->getWidth()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :cond_6
    :goto_3
    iget v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollWidth:I

    sub-int v7, v5, v7

    int-to-float v7, v7

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_a

    int-to-float v7, v5

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_a

    const/4 v7, 0x3

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentAppsPage()Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentAppsPage()Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/views/PageView;->getWidth()I

    move-result v5

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getCurrentWidgetPage()Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getCurrentWidgetPage()Lcom/sec/daliviews/views/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/views/PageView;->getWidth()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :cond_9
    iget v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMinX:I

    int-to-float v7, v7

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_a

    iget v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMaxX:I

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_a

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method public isHoveringAreaY(F)Z
    .locals 7

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    instance-of v5, v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v5, :cond_2

    move-object v2, v3

    check-cast v2, Lcom/sec/android/app/launcher/activities/HomePresenter;

    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    :cond_1
    :goto_1
    if-nez v1, :cond_4

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollTop:I

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_6

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollBottom:I

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_6

    :goto_2
    return v4

    :cond_2
    instance-of v5, v3, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v5, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderUpperBoundary:I

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_6

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderLowerBoundary:I

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_6

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderUpperBoundary:I

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderUpperBoundary:I

    iget v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_5

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverDirection:I

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderLowerBoundary:I

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_6

    iget v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderLowerBoundary:I

    iget v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_6

    const/4 v5, 0x5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverDirection:I

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public isInitialised()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->isInitialised()Z

    move-result v0

    return v0
.end method

.method public isKeypadFocusAttached()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->isKeypadFocusAttached()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLaunchEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffectEnabled:Z

    return v0
.end method

.method public isRTLLayout()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOnStarted:Z

    return v0
.end method

.method public isWifiAvailable()Z
    .locals 4

    const/4 v2, 0x1

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZeroAppExist(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mannerModeSet()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setRingerMode(Z)V

    const v1, 0x7f0d00ae

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setRingerMode(Z)V

    const v1, 0x7f0d00ad

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public moveToFavoritesPage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->moveToFavoritesPage()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResultListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onAttachedToWindow()V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v2}, Lcom/google/android/hotword/client/HotwordServiceClient;->onAttachedToWindow()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v4, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_3
    return-void

    :cond_4
    const-string v2, "LauncherActivity"

    const-string v3, "wallpaperscroller - mWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile Keyboard : onConfigurationChanged - newConfig.mobileKeyboardCovered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mMobileKeyboardConfig:I

    iget v2, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->checkValidSizeOnMobileKeyboard(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    const-string v1, "LauncherActivity"

    const-string v2, "Mobile Keyboard : onConfigurationChanged - INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    sput v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mMobileKeyboardConfig:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setTakescreenshot()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->refreshContentDescriptions()V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    sget v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOrientation:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    sput v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOrientation:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRotating:Z

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRotating:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mInitialised:Z
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->access$2400(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->relayoutAllViews(Z)V

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v16, "LauncherActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onCreate() "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-nez v16, :cond_11

    sput-object p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    new-instance v15, Lcom/sec/android/app/launcher/theme/ThemeManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/sec/android/app/launcher/theme/ThemeManager;-><init>(Landroid/content/Context;)V

    invoke-static {v15}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setThemeManager(Lcom/sec/android/app/launcher/theme/ThemeManager;)V

    new-instance v16, Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/data/DataManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    const v16, 0x7f03003d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setContentView(I)V

    new-instance v16, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setupSurface()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v16, 0x7f080005

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v16, Lcom/sec/daliviews/debug/DebugServerReceiver;

    invoke-direct/range {v16 .. v16}, Lcom/sec/daliviews/debug/DebugServerReceiver;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDebugReceiver:Lcom/sec/daliviews/debug/DebugServerReceiver;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDebugReceiver:Lcom/sec/daliviews/debug/DebugServerReceiver;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "com.sec.daliviews.enabledebugserver"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const v16, 0x7f080002

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    sput-boolean v16, Lcom/sec/android/app/launcher/data/AppWidgetItem;->APP_WIDGET_IS_DRAWABLE_VIEW:Z

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    const-string v16, "sensor"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/SensorManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_1
    const v2, 0x1002b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    if-nez v7, :cond_12

    const-string v16, "LauncherActivity"

    const-string v17, "LauncherActivity::onCreate() - gyroSensor not support. SUPPORT_TILT_WALLPAPER set false. "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    :cond_2
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mMaximumVelocity:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0287

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSnapVelocity:I

    iget v0, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x43200000    # 160.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDpiScale:F

    new-instance v16, Lcom/sec/android/app/launcher/activities/LauncherEffects;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherEffects;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEffects:Lcom/sec/android/app/launcher/activities/LauncherEffects;

    const v16, 0x7f08000a

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffectEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffectEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    new-instance v16, Lcom/sec/daliviews/effects/LaunchEffectZoomOut;

    invoke-direct/range {v16 .. v16}, Lcom/sec/daliviews/effects/LaunchEffectZoomOut;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffect:Lcom/sec/daliviews/effects/LaunchEffect;

    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSavedState:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSavedState:Landroid/os/Bundle;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSavedState:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "extra_visible_fragment"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOnCreate:Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setRequestedOrientation(I)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getRotation()I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_6

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_14

    :cond_6
    const/16 v16, 0x2

    sput v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOrientation:I

    :goto_1
    invoke-virtual {v15}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v16

    sget-object v17, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v16

    if-nez v16, :cond_15

    const v16, 0x7f08000b

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    sput-boolean v16, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->initWidgetHost()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->resetSurfaceWidgetPackageManager()V

    sget-boolean v16, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mSupportHotWord:Z

    if-eqz v16, :cond_7

    new-instance v16, Lcom/google/android/hotword/client/HotwordServiceClient;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c000a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->fromInt(I)Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBoosterEnabled:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->create()Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->setDataManager(Lcom/sec/android/app/launcher/data/DataManager;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerActivityResultListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;)V

    sget v16, Lcom/sec/android/app/launcher/activities/LauncherApp;->RemovablePreloadEnabled:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->addRemovablePreloadAppToList()V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setIndicatorTransparency()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUseBlendedFilterForStatusbar:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setSystemUiTransparency(Z)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SetLiveIconUpdate()V

    const-string v16, "flipboard.boxer.app"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeroAppExist(Ljava/lang/String;)Z

    move-result v11

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getCscFeatureZeroPagePackagename()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getCscFeatureZeroPagePackagename()Ljava/lang/String;

    move-result-object v16

    const-string v17, "com.mobilesrepublic.sohu.launcher"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_a

    const-string v16, "com.mobilesrepublic.sohu.launcher"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeroAppExist(Ljava/lang/String;)Z

    move-result v16

    sput-boolean v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isZeropageDual:Z

    :cond_a
    if-eqz v11, :cond_16

    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.wubydax.geartwswipe"

    const-string v19, "com.wubydax.geartwswipe.SetAppActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_3
    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    const-string v17, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    const-string v17, "fromHome"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v16

    if-eqz v16, :cond_17

    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    const-string v17, "fingerSwipe"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_4
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v16

    if-eqz v16, :cond_18

    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    const-string v17, "rotation"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_5
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v16, "android.intent.action.WALLPAPER_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v16, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "accessibility_large_cursor"

    invoke-static/range {v17 .. v17}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->largeCursorState:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "wallpaper_tilt_status"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    if-eqz v16, :cond_19

    const/16 v16, 0x1

    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "wallpaper_tilt_status"

    invoke-static/range {v17 .. v17}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "need_dark_font"

    invoke-static/range {v17 .. v17}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNeedDarkFontSettingsChanged:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v16, "android.intent.action.DATE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v16, "android.intent.action.MANAGED_PROFILE_ADDED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v16, "android.intent.action.MANAGED_PROFILE_REMOVED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerAccessibilityGestureListener()V

    sget-boolean v16, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    if-eqz v16, :cond_c

    new-instance v8, Lcom/sec/android/app/launcher/utils/Logging;

    invoke-direct {v8}, Lcom/sec/android/app/launcher/utils/Logging;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/sec/android/app/launcher/utils/Logging;->startFisrtLoggingForLauncherStatus(Landroid/app/Activity;)V

    :cond_c
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v16

    sget-object v17, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v16

    if-nez v16, :cond_d

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v16

    sget-object v17, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v16

    if-eqz v16, :cond_e

    :cond_d
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCheckTheme:Z

    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Common_EnableSprintExtension"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->checkEnableScreenGridForSprint()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->StartZeroImageObserver()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->initManagedProfileState()V

    sget-boolean v16, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v16, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v16, v0

    sput v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mMobileKeyboardConfig:I

    :cond_10
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v16, "com.sec.android.intent.action.MYPLACES_START"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setHoverXScrollBoundary()V

    :goto_7
    return-void

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->finish()V

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    move-object/from16 v16, v0

    if-nez v16, :cond_13

    new-instance v16, Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    sget-object v17, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct/range {v16 .. v17}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/launcher/utils/GyroForShadow;->initialize(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->start(Z)V

    goto/16 :goto_0

    :cond_14
    const/16 v16, 0x1

    sput v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOrientation:I

    goto/16 :goto_1

    :cond_15
    const/16 v16, 0x0

    sput-boolean v16, Lcom/sec/android/app/launcher/activities/LauncherApp;->mLiveIconEnabled:Z

    goto/16 :goto_2

    :cond_16
    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.headlines"

    const-string v19, "com.samsung.android.app.headlines.activity.HeadlinesActivity"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_17
    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    const-string v17, "fingerSwipe"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_18
    sget-object v16, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    const-string v17, "rotation"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_19
    const/16 v16, 0x0

    goto/16 :goto_6
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> onDestroy() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->performStop()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->notifyDestroy()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/DataManager;->stop()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->prepareForShutdown()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataListener:Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/data/DataManager;->unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->largeCursorState:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNeedDarkFontSettingsChanged:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->unregisterAcessibilityGestureListener()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    sget-object v1, Lcom/sec/android/app/launcher/utils/Talk;->INSTANCE:Lcom/sec/android/app/launcher/utils/Talk;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/utils/Talk;->shutdown()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxEffectEnabled:Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetHost:Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;->stopListening()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_4
    invoke-static {}, Lcom/sec/daliviews/views/ViewInflater;->destroy()V

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->destroy()V

    invoke-static {}, Lcom/sec/daliviews/utils/ResTextViewList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ContainerView;->destroy()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->destroy()V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->destroy()V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeResizeFrame:Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeResizeFrame:Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeResizeFrame;->destroy()V

    :cond_8
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->destroyNow()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    invoke-virtual {v1}, Lcom/sec/daliviews/events/NativeEventHitlist;->destroy()V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/DataManager;->destroy()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->destroyViewModes()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEffects:Lcom/sec/android/app/launcher/activities/LauncherEffects;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherEffects;->destroy()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->destroy()V

    sput-object v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->shutdown()V

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageScreenshotsObserver:Landroid/os/FileObserver;

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDebugReceiver:Lcom/sec/daliviews/debug/DebugServerReceiver;

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDebugReceiver:Lcom/sec/daliviews/debug/DebugServerReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_c
    const-string v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< onDestroy() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onDetachedFromWindow()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    if-eqz v0, :cond_1

    const-string v0, "LauncherActivity"

    const-string v1, "WallpaperScroller window token set null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method public onDragEnd()V
    .locals 5

    const-string v3, "LauncherActivity"

    const-string v4, "onDragEnd"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onDragEnd()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->cancelPageChangeTimer()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setUninstallBadge(ZZ)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onDragEnd()V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onDragEnd()V

    :cond_4
    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 5

    const-string v3, "LauncherActivity"

    const-string v4, "onDragEnter"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 5

    const-string v3, "LauncherActivity"

    const-string v4, "onDragExit"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 5

    const-string v3, "LauncherActivity"

    const-string v4, "onDragStart"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 5

    const-string v3, "LauncherActivity"

    const-string v4, "onDrop"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public onItemsDisplaced([Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->onItemsDisplaced([Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onItemsDisplaced([Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onItemsDisplaced([Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12

    const/16 v11, 0x12

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    if-lt p1, v10, :cond_7

    if-gt p1, v11, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->setFolderNameEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v6

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-lt p1, v10, :cond_3

    const/16 v7, 0x10

    if-gt p1, v7, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.DIAL"

    const-string v8, "tel:"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    const-string v7, "isKeyTone"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-eq p1, v11, :cond_4

    const/16 v7, 0x11

    if-ne p1, v7, :cond_6

    const-string v7, "royceltectc"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    iget-boolean v7, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLongPress:Z

    if-eqz v7, :cond_5

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mShortPress:Z

    :goto_2
    move v2, v6

    goto :goto_0

    :cond_5
    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mShortPress:Z

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLongPress:Z

    goto :goto_2

    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.DIAL"

    const-string v8, "tel:"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    :cond_7
    const/16 v7, 0x1b

    if-ne p1, v7, :cond_8

    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x4000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    :cond_8
    const/16 v7, 0x52

    if-ne p1, v7, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v6

    goto/16 :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v2, 0x12

    const/4 v0, 0x1

    if-eq p1, v2, :cond_0

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mShortPress:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLongPress:Z

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mannerModeSet()V

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-eq p1, v2, :cond_0

    const/16 v2, 0x11

    if-ne p1, v2, :cond_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mShortPress:Z

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    const-string v3, "tel:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mShortPress:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLongPress:Z

    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onLocaleChangeCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->onLocaleChangeCompleted()V

    :cond_0
    return-void
.end method

.method public onLocaleChangeStarted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->onLocaleChangeStarted()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9

    const/high16 v8, 0x400000

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "LauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewIntent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drag state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "extra_enter_screen_grid"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/android/app/launcher/activities/LauncherActivity$11;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$11;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    sput-boolean v6, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStartScreenGrid:Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v8

    if-eq v3, v8, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/sec/daliviews/layouts/PageLayout;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setIsHomeKeyPressed(ZLandroid/content/Intent;)V

    const-string v3, "LauncherActivity"

    const-string v4, "apps scrolling"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->handleHomePressed(Landroid/content/Intent;)Z

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10a00000

    if-ne v3, v4, :cond_4

    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->pressHomeKeyInLauncher:Z

    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPackageUninstalled(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUninstalledItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setSensitive(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUninstalledItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/data/DataManager;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffectEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppLaunchedWithLaunchEffect:Z

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "LaunchEffect"

    const-string v2, "[JAVA] Hybernating the UI thread for 300ms."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPeopleEdgeChangeReceiver:Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPeopleEdgeChangeReceiver:Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPeopleEdgeChangeReceiver:Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->pause()V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->performPause()V

    const-string v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onResizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v5, "LauncherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iput-boolean v11, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResumed:Z

    sget-boolean v5, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->pendingBadgeUpdate:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->BADGE_INTERNAL_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUseBlendedFilterForStatusbar:Z

    if-nez v5, :cond_1

    invoke-virtual {p0, v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setSystemUiTransparency(Z)V

    :cond_1
    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bIsCamerastarted:Z

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "LauncherActivity"

    const-string v6, "Resumed Type : Knox Launcher"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    invoke-virtual {v5, v11}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->runWeatherTask(Z)V

    :cond_2
    sget-object v5, Lcom/sec/android/app/launcher/utils/Talk;->INSTANCE:Lcom/sec/android/app/launcher/utils/Talk;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/utils/Talk;->onResume()V

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffectEnabled:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppLaunchedWithLaunchEffect:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffect:Lcom/sec/daliviews/effects/LaunchEffect;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLaunchEffect:Lcom/sec/daliviews/effects/LaunchEffect;

    invoke-virtual {v5}, Lcom/sec/daliviews/effects/LaunchEffect;->getState()I

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "LaunchEffect"

    const-string v6, "[JAVA] LauncherActivity.onResume() - Performing Launch Effect."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/sec/android/app/launcher/activities/LauncherActivity$10;

    invoke-direct {v6, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$10;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->SUPPORT_TILT_WALLPAPER:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWallpaperTiltSettingEnabled:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPeopleEdgeChangeReceiver:Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;

    if-nez v5, :cond_4

    new-instance v5, Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;

    invoke-direct {v5}, Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPeopleEdgeChangeReceiver:Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;

    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.samsung.android.app.peoplestripeservice.CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPeopleEdgeChangeReceiver:Lcom/sec/android/app/launcher/receivers/PeopleEdgeChangeReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->pressHomeKeyInLauncher:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->resume(Z)V

    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->pressHomeKeyInLauncher:Z

    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mActivityRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    :cond_7
    :goto_2
    iput-boolean v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppLaunchedWithLaunchEffect:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingIntentList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-lez v5, :cond_d

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingIntentList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    invoke-virtual {v5, v11}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->resume(Z)V

    goto :goto_1

    :cond_a
    new-instance v5, Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    invoke-direct {v5, p0}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mTiltWallpaperScroller:Lcom/sec/android/app/launcher/utils/WallpaperScroller;

    invoke-virtual {v5, v11}, Lcom/sec/android/app/launcher/utils/WallpaperScroller;->resume(Z)V

    goto/16 :goto_1

    :cond_b
    const-string v5, "LauncherActivity"

    const-string v6, "wallpaperscroller - mWindowToken is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->pendingIntentList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    :cond_d
    sget-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ContainerView;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_e

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v5, v10}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "extra_visible_fragment"

    iget v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return v1
.end method

.method protected onStart()V
    .locals 3

    const-string v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->attachRootView(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mOnStarted:Z

    return-void
.end method

.method protected onStop()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {p0, v0}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->performStop()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const-string v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory. Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :sswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x3c -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 23

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUseBlendedFilterForStatusbar:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResumed:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setSystemUiTransparency(Z)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/activities/PresenterBase;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->genWindowStateChanged(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/activities/PresenterBase;)V

    :cond_1
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPagePresenters()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getmNeedtoOpenConfigureLater()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsDragAndDrop:Z

    if-eqz v2, :cond_4

    const/16 v16, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->getInitialised()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v16, :cond_5

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v22

    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setVisibility(Z)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerAccessibilityGestureListener()V

    :goto_1
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/daliviews/events/NativeEventHitlist;->processEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->recycle()V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->unregisterAcessibilityGestureListener()V

    goto :goto_1
.end method

.method public performHapticFeedback(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->performHapticFeedback(I)Z

    return-void
.end method

.method public playSoundEffect(I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$9;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshContentDescriptions()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->refreshContentDescriptions()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->refreshContentDescriptions()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->refreshContentDescriptions()V

    :cond_2
    return-void
.end method

.method public registerActivityResultListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResultListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerDestroyListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDestroyListeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reinitViewModes()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->destroyViewModes()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->initViewModes()V

    return-void
.end method

.method public removeFocus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->removeFocus()V

    :cond_0
    return-void
.end method

.method public removeViewFromScene(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerView;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public saveBackgroundViewBlurState(Z)V
    .locals 5

    const-string v2, "WALLPAPER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving BackgroundView blur state( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bgLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "background_view_blur_state"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveBackgroundViewColorModulationState(I)V
    .locals 8

    const/4 v7, 0x0

    const-string v2, "WALLPAPER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving BackgroundView color modulation state( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0x%8s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    const/16 v6, 0x30

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bgLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "background_view_color_modulation_state"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveBlurWallpaperEnableState(Z)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "blur_wall_paper_enable"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveParallaxEffectEnableState(Z)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "parallax_effect_enable"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public savePowerSavingModeEnableState(Z)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "power_saving_mode_enable"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveToastPopup(Ljava/lang/Boolean;)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "add.toast.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveToastPopupForDisableDialog(Ljava/lang/Boolean;)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "disable.toast.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveWeatherEffectEnableState(Z)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "weather_effect_enable"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public scrollByHover(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setHoverYScrollBoundary()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v5

    const/4 v1, 0x0

    instance-of v10, v5, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v10, :cond_3

    check-cast v5, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setHoverScrollBoundaryForFolder()V

    :cond_1
    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isHoveringAreaX(F)I

    move-result v10

    iput v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverDirection:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    :goto_1
    return v8

    :cond_3
    instance-of v10, v5, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v10, :cond_0

    check-cast v5, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering_list_scroll"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollHandler:Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;

    if-nez v10, :cond_5

    new-instance v10, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/android/app/launcher/activities/LauncherActivity$1;)V

    iput-object v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollHandler:Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;

    :cond_5
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_6
    :goto_2
    :pswitch_0
    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScrollByHover:Z

    if-nez v10, :cond_7

    invoke-virtual {p0, v8}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setHoveringSpenIcon(I)V

    :cond_7
    move v8, v9

    goto :goto_1

    :pswitch_1
    iget v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverDirection:I

    if-eqz v10, :cond_8

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isHoveringAreaY(F)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScrollByHover:Z

    if-nez v10, :cond_6

    iput-boolean v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScrollByHover:Z

    iget v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverDirection:I

    invoke-virtual {p0, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setHoveringSpenIcon(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iput v9, v4, Landroid/os/Message;->what:I

    iget v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverDirection:I

    iput v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollDir:I

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollHandler:Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v4, v12, v13}, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_8
    iput-boolean v8, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScrollByHover:Z

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollHandler:Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollHandler:Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->removeMessages(I)V

    goto :goto_2

    :pswitch_2
    iput-boolean v8, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScrollByHover:Z

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollHandler:Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollHandler:Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity$HoverScrollHandler;->removeMessages(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public selectArea(Lcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->setFocusOnView(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_0
    return-void
.end method

.method public sendIntentForSamsungPay(Z)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "com.samsung.android.spay.HOME_GRID_START"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "com.samsung.android.spay.permission.HOME_GRID"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendIntentForSamsungPay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "com.samsung.android.spay.HOME_GRID_END"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibilityEnabled:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHotWord(Z)V

    invoke-static {p1}, Lcom/sec/daliviews/views/NativeViewBase;->setAccessiblityEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->addUpdateContentDescription()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccessibilityMode(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/PresenterBase;->setAccessibilityMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LauncherActivity"

    const-string v2, "Set accessibility on mHomeSettingPreferenceFragment?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "LauncherActivity"

    const-string v2, "Unable to determine what is on-screen for accessibility"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAccessibilityPageChange()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->pageChange()V

    :cond_0
    return-void
.end method

.method public setAppLaunchedWithLaunchEffect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppLaunchedWithLaunchEffect:Z

    return-void
.end method

.method public setBackgroundColorModulation(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedWeatherEffectEnableState()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$16;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPostCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setBlurWallPaperMode(Z)V
    .locals 3

    const-string v0, "WALLPAPER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlurWallPaperMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bgLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->saveBlurWallpaperEnableState(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedPowerSavingModeEnableState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->changeWallPaperInThread()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setCapureFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCaptureflag:Z

    return-void
.end method

.method public setCheckTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mCheckTheme:Z

    return-void
.end method

.method public setEnableHeadlines(Z)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v0

    move v3, v1

    move v4, v2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollWrap(ZZZZZ)V

    :cond_0
    :goto_0
    sput-boolean p1, Lcom/sec/android/app/launcher/activities/LauncherActivity;->sIsHeadlinesAppEnable:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageLayout()Lcom/sec/daliviews/layouts/PageLayout;

    move-result-object v3

    move v4, v2

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/daliviews/layouts/PageLayout;->setScrollWrap(ZZZZZ)V

    goto :goto_0
.end method

.method public setEnableHotWord(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibilityEnabled:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/launcher/activities/LauncherActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$14;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFeatures()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedBlurWallpaperEnableState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setBlurWallPaperMode(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedWeatherEffectEnableState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isWifiAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setWeatherEffectMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$18;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$19;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFlagToMoveToFavoritePage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setFlagToMoveToFavoritePage()V

    return-void
.end method

.method public setGesturePredictionAmount(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/NativeApp;->setGesturePredictionAmount(I)V

    return-void
.end method

.method public setGestureSmoothingAmount(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/NativeApp;->setGestureSmoothingAmount(F)V

    return-void
.end method

.method public setHoverScrollBoundaryForFolder()V
    .locals 7

    const v6, 0x7f0a0215

    const v5, 0x7f0a01f4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v1

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMinX:I

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMaxX:I

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderLowerBoundary:I

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderUpperBoundary:I

    const/4 v0, 0x0

    instance-of v3, v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMinX:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMaxX:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderUpperBoundary:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderLowerBoundary:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/OpenFolderView;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMinX:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderMaxX:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderUpperBoundary:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFolderLowerBoundary:I

    goto :goto_0
.end method

.method public setHoverXScrollBoundary()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollTop:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollBottom:I

    return-void
.end method

.method public setHoverYScrollBoundary()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollBottom:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHoverScrollTop:I

    return-void
.end method

.method public setHoveringSpenIcon(I)V
    .locals 3

    iget v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLastHoverDirection:I

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setIcon(II)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScrollByHover:Z

    :goto_1
    iput p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mLastHoverDirection:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LauncherActivity"

    const-string v2, "Error while setting Spen Pointer Icon"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x2

    const/16 v2, 0x11

    :try_start_1
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setIcon(II)V

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    const/16 v2, 0xd

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setIcon(II)V

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x2

    const/16 v2, 0xf

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setIcon(II)V

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x2

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setIsHomeKeyPressed(ZLandroid/content/Intent;)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsHomeKeyPressed:Z

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeKeyPressedIntent:Landroid/content/Intent;

    return-void
.end method

.method public setItemsLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetItemsLoading:Z

    return-void
.end method

.method public setKeypadPageChanged(Lcom/sec/daliviews/layouts/PageLayout;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->pageChanged(Lcom/sec/daliviews/layouts/PageLayout;I)V

    :cond_0
    return-void
.end method

.method public setParallaxEffectMode(Z)V
    .locals 8

    const v7, 0x3f933333    # 1.15f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorEventListener:Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/android/app/launcher/activities/LauncherActivity$1;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorEventListener:Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorEventListener:Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxEffectEnabled:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->saveParallaxEffectEnableState(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    invoke-virtual {v2, v7, v7}, Lcom/sec/daliviews/views/BackgroundView;->setBackgroundScale(FF)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a025a

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxBackgroundX:F

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a025b

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxBackgroundY:F

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a025c

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxIconsX:F

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a025d

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxIconsY:F

    :cond_4
    return-void

    :cond_5
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorEventListener:Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSensorEventListener:Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBackgroundView:Lcom/sec/daliviews/views/BackgroundView;

    invoke-virtual {v2, v6, v6}, Lcom/sec/daliviews/views/BackgroundView;->setBackgroundScale(FF)V

    goto :goto_1
.end method

.method public setPowerSavingMode(Z)V
    .locals 4

    const v3, 0x7f020002

    const v2, 0x7f020001

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_3

    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTheme(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsPopupMenu:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsPopupMenu:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->getButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setBlackAndWhiteEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setBackgroundColor(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->savePowerSavingModeEnableState(Z)V

    return-void

    :cond_3
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_2

    const v0, 0x7f0e0007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTheme(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsPopupMenu:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsPopupMenu:Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->getButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setBlackAndWhiteEffect(Z)V

    goto :goto_0
.end method

.method public setScreenBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setShadowVisible(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEffects:Lcom/sec/android/app/launcher/activities/LauncherEffects;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/LauncherEffects;->setShadowVisible(IZ)V

    return-void
.end method

.method public setStandardBG()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v9}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v2

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v9}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v1

    sget-object v9, Lcom/sec/android/app/launcher/activities/LauncherActivity;->gInstance:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {v9}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    const-string v9, "LauncherActivity"

    const-string v10, "setStandardBG(), WallpaperManager getFastDrawable() returned null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-le v4, v2, :cond_2

    sub-int v9, v4, v2

    div-int/lit8 v5, v9, 0x2

    :cond_2
    if-le v3, v1, :cond_3

    sub-int v9, v3, v1

    div-int/lit8 v6, v9, 0x2

    :cond_3
    if-lt v3, v1, :cond_4

    if-ge v4, v2, :cond_6

    :cond_4
    invoke-virtual {v7, v10, v10, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-lt v3, v1, :cond_5

    if-ge v4, v2, :cond_7

    :cond_5
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    const/4 v10, 0x1

    invoke-static {v9, v2, v1, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_6
    invoke-virtual {v7, v10, v10, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    invoke-static {v9, v5, v6, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mStandardBG:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method setSystemUiTransparency(Z)V
    .locals 8

    const v7, -0x7ffff400

    const/high16 v6, -0x80000000

    const v5, 0x4000c00

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1
.end method

.method public setTextStyle(Lcom/sec/daliviews/views/TextView;ZI)V
    .locals 8

    const/4 v7, 0x2

    const v6, 0x3ecccccd    # 0.4f

    const/4 v4, 0x3

    new-array v0, v4, [F

    invoke-virtual {p1, p3}, Lcom/sec/daliviews/views/TextView;->setDefaultTextColor(I)V

    invoke-static {p3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v4, v0, v7

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4}, Lcom/sec/daliviews/views/TextView;->setShadowRadius(F)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f08001d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object v4, p1

    check-cast v4, Lcom/sec/daliviews/views/StrokeDaliTextView;

    invoke-virtual {v4, v2}, Lcom/sec/daliviews/views/StrokeDaliTextView;->setStroke(Z)V

    aget v4, v0, v7

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    const v4, 0x7f090016

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_1
    check-cast p1, Lcom/sec/daliviews/views/StrokeDaliTextView;

    invoke-virtual {p1, v3}, Lcom/sec/daliviews/views/StrokeDaliTextView;->setStrokeColor(I)V

    :goto_2
    return-void

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/sec/daliviews/views/TextView;->setShadowRadius(F)V

    goto :goto_0

    :cond_3
    const v4, 0x7f090014

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_1

    :cond_4
    check-cast p1, Lcom/sec/daliviews/views/StrokeDaliTextView;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/sec/daliviews/views/StrokeDaliTextView;->setStroke(Z)V

    goto :goto_2
.end method

.method public setTextStyleForModedView(IIIILandroid/graphics/drawable/Drawable;)V
    .locals 13

    const v3, 0x1ffffff

    if-ne p1, v3, :cond_0

    const v3, 0x1ffffff

    if-ne p2, v3, :cond_0

    const v3, 0x1ffffff

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    const v3, 0x1ffffff

    move/from16 v0, p4

    if-ne v0, v3, :cond_0

    if-eqz p5, :cond_7

    :cond_0
    invoke-static {}, Lcom/sec/daliviews/views/ModedView;->getModes()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ModedView;

    const/4 v8, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->getSize()I

    move-result v3

    if-ge v8, v3, :cond_1

    const/4 v10, 0x0

    :goto_1
    sget-object v3, Lcom/sec/android/app/launcher/views/ViewDefs$VIEW_MODES;->MODES_MAP:[I

    array-length v3, v3

    if-ge v10, v3, :cond_6

    sget-object v3, Lcom/sec/android/app/launcher/views/ViewDefs$VIEW_MODES;->MODES_MAP:[I

    aget v2, v3, v10

    invoke-static {v8}, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->fromInt(I)Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->getGridRowColumnCount(Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;)[I

    move-result-object v9

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    const/4 v5, 0x1

    const v6, 0x7f0b008f

    invoke-virtual/range {v1 .. v6}, Lcom/sec/daliviews/views/ModedView;->findChildViewById(IIIII)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    move-object v12, v3

    check-cast v12, Lcom/sec/daliviews/views/TextView;

    if-nez v12, :cond_2

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    const/4 v5, 0x1

    const v6, 0x7f0b005f

    invoke-virtual/range {v1 .. v6}, Lcom/sec/daliviews/views/ModedView;->findChildViewById(IIIII)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    move-object v12, v3

    check-cast v12, Lcom/sec/daliviews/views/TextView;

    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/sec/daliviews/views/TextView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_2
    :pswitch_0
    const v3, 0x1ffffff

    move/from16 v0, p4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    const/4 v5, 0x1

    const v6, 0x7f0b0095

    invoke-virtual/range {v1 .. v6}, Lcom/sec/daliviews/views/ModedView;->findChildViewById(IIIII)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/TextView;

    move-object v7, v3

    check-cast v7, Lcom/sec/daliviews/views/TextView;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/sec/daliviews/views/TextView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    move/from16 v0, p4

    invoke-direct {p0, v7, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextStyle(Lcom/sec/daliviews/views/TextView;I)V

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :pswitch_1
    const v3, 0x1ffffff

    if-eq p2, v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {p0, v12, v3, p2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextStyle(Lcom/sec/daliviews/views/TextView;ZI)V

    goto :goto_2

    :pswitch_2
    const v3, 0x1ffffff

    move/from16 v0, p3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x0

    move/from16 v0, p3

    invoke-virtual {p0, v12, v3, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextStyle(Lcom/sec/daliviews/views/TextView;ZI)V

    goto :goto_2

    :pswitch_3
    const v3, 0x1ffffff

    if-eq p1, v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p0, v12, v3, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setTextStyle(Lcom/sec/daliviews/views/TextView;ZI)V

    :cond_5
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Lcom/sec/daliviews/views/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b00d7
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setTextureScaleRatio(I)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "texture_scale_ratio"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWeatherEffectMode(Z)V
    .locals 3

    const-string v0, "WALLPAPER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWeatherEffectMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bgLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->saveWeatherEffectEnableState(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->runWeatherTask(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->changeWallPaperInThread()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->runWeatherTask(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWeatherInteraction:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    goto :goto_0
.end method

.method setZeroPageDummyBg()V
    .locals 8

    const-string v1, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/"

    const-string v0, "briefing.jpg"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    move-object v5, v6

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v5, v6

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    throw v7

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public setZeroPageIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->HOME_ZEROPAGE_INTENT:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method public shouldDisablePopupRepeat()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "disable.toast.popup.dismissed.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public shouldToastRepeat()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "add.toast.popup.dismissed.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public showAppsFragment()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisible(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibilityEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announceByTalkback(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAccessibilityMode(Z)V

    :cond_2
    return-void
.end method

.method public showAppsFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1, v2, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibilityEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAccessibilityMode(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeApp;->clearTextureRecycler()V

    return-void
.end method

.method public showAppsSelector(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x3c23d70a    # 0.01f

    const/4 v4, 0x0

    const/4 v3, 0x4

    iput v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    new-instance v2, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v2, v5}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v1, v3, v2, v4}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setAppsSelectionMode(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/activities/AppsPresenter$IAppSelectionListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    new-instance v2, Lcom/sec/android/app/launcher/utils/FadeDuration;

    invoke-direct {v2, v5}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v1, v4, v2, v4}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    :cond_1
    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    return-void
.end method

.method public showFocus(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibility:Lcom/sec/android/app/launcher/activities/Accessibility;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/Accessibility;->showFocus(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public showHomeFragment()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x4

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setVisible(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisible(I)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisible(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b0071

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    :cond_3
    return-void
.end method

.method public showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x4

    iput v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string v3, "LAUNCHER_HOME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showHomeFragmentAnimated with duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/utils/FadeDuration;->getInDuration()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3, v2, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v3, v6, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v3, v6, p1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v3, v6, p1}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const v4, 0x7f0b0071

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getHomescreenMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAccessibilityEnabled:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->announceByTalkback(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public showSettingPreferenceFragment()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisible(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    return-void
.end method

.method public showSettingsFragment(Lcom/sec/android/app/launcher/data/PageItem;)V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisible(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    return-void
.end method

.method public showToastMsg(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mToast:Landroid/widget/Toast;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public showWidgetsFragment()V
    .locals 4

    const/4 v3, 0x4

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisible(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0136

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    return-void
.end method

.method public showWidgetsFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string v1, "LAUNCHER_WIDGET"

    const-string v2, "showWidgetsFragmentAnimated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1, v4, p1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1, v3, p1, v4}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setVisibleAnimated(ILcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisible(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->removeFocus()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b0136

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeApp;->clearTextureRecycler()V

    return-void
.end method

.method public showZeroPageListFragment()V
    .locals 4

    const/4 v3, 0x4

    iput v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mVisibleFragmentId:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/HomeFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/AppsFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mZeroPageListFragment:Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/ZeroPageListFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeSettingPreferenceFragment:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setVisible(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const v2, 0x7f0b013b

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ContainerView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mFragmentRootView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->blurWallpaper(Z)V

    return-void
.end method

.method public startActivityWithTransitionForHeadlines(Landroid/content/Intent;Z)V
    .locals 5

    const/high16 v2, 0x30200000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const v2, 0x7f04001f

    const v3, 0x7f040022

    :try_start_0
    invoke-static {p0, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    const v2, 0x7f040020

    const v3, 0x7f040021

    invoke-static {p0, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public startActivityWithTransitionForHomeZeroPage(Landroid/content/Intent;Z)V
    .locals 4

    const/high16 v1, 0x30200000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isFingeSwipeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->BitmapCompress()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    const v1, 0x7f040024

    const v2, 0x7f040025

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch. intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9

    const/4 v8, 0x0

    const-string v5, "LauncherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "surfaceChanged - width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    if-le p3, p4, :cond_1

    const-string v5, "LauncherActivity"

    const-string v6, "wrong surface size"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ContainerView;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ContainerView;->getHeight()I

    move-result v5

    if-eq v5, p4, :cond_2

    if-le p4, p3, :cond_2

    invoke-static {p4}, Lcom/sec/android/app/launcher/utils/Utils;->checkValidSizeOnMobileKeyboard(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    const-string v5, "LauncherActivity"

    const-string v6, "Mobile Keyboard : surfaceChanged - INVISIBLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    iget v6, v2, Landroid/util/DisplayMetrics;->xdpi:F

    iget v7, v2, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v5, v6, v7, p3, p4}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->surfaceChanged(FFII)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHomeFragment:Lcom/sec/android/app/launcher/activities/HomeFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-eq v5, v6, :cond_3

    invoke-virtual {v1, v8}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setLandscapeEffect(Z)V

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ContainerViewBase;->getLayout()Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/layouts/LayoutBase;->setAnimatePositioning(Z)V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mAppsFragment:Lcom/sec/android/app/launcher/activities/AppsFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->setLandscapeEffect()V

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mWidgetsFragment:Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setLandscapeEffect()V

    :cond_6
    iput-boolean v8, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mIsRotating:Z

    :cond_7
    sget-boolean v5, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    if-eqz v5, :cond_0

    invoke-static {p4}, Lcom/sec/android/app/launcher/utils/Utils;->checkValidSizeOnMobileKeyboard(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v5, v8}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    const-string v5, "LauncherActivity"

    const-string v6, "Mobile Keyboard : surfaceChanged - VISIBLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 14

    const-string v0, "LauncherActivity"

    const-string v1, "surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceCreated:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget v2, v8, Landroid/util/DisplayMetrics;->xdpi:F

    iget v3, v8, Landroid/util/DisplayMetrics;->ydpi:F

    iget v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDpiScale:F

    iget v5, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->surfaceCreated(Landroid/view/Surface;FFFII)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPanGestureMinMotionPixel:I

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeApp;->setMinimumMotionBeforePan(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0298

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v13}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/daliviews/views/NativeApp;->setGesturePredictionMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/daliviews/views/NativeApp;->setGesturePredictionAmount(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/daliviews/views/NativeApp;->setGestureSmoothingMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/daliviews/views/NativeApp;->setGestureSmoothingAmount(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0299

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v13}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->nativeApp()Lcom/sec/daliviews/views/NativeApp;

    move-result-object v0

    neg-float v1, v7

    neg-float v2, v7

    invoke-virtual {v0, v1, v2, v7, v7}, Lcom/sec/daliviews/views/NativeApp;->setGestureVelocityClipbox(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->onResume()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "LauncherActivity"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceCreated:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mNativeAppWrapper:Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->surfaceDestroyed()V

    return-void
.end method

.method public uninstallAndDisableApp(Lcom/sec/daliviews/views/Item;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mUninstalledItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isBlockUninstall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/sec/daliviews/views/Item;Landroid/app/FragmentManager;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isNonDisable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemSigned()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->callDisableDialog(Lcom/sec/android/app/launcher/data/HomeItem;)V

    goto :goto_0
.end method

.method public unregisterActivityResultListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResultListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mResultListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterDestroyListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDestroyListeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
