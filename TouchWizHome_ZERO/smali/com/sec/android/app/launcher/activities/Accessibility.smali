.class public Lcom/sec/android/app/launcher/activities/Accessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "Accessibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;,
        Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityNodeInfoList;,
        Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;,
        Lcom/sec/android/app/launcher/activities/Accessibility$DIRECTION;
    }
.end annotation


# static fields
.field private static final mMoveIsFollowTimeout:I = 0x3e8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private childParentMap:Landroid/util/SparseIntArray;

.field cursorIndex:I

.field isFocusedViewReadingAllowed:Z

.field isSingleTapActivated:Z

.field private islargeCursorEnabled:Z

.field mAccessibilityContextMenuTypeObserver:Landroid/database/ContentObserver;

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field private mClassName:Ljava/lang/CharSequence;

.field mContentForTalkback:Ljava/lang/String;

.field private mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mFocusAttached:Z

.field private mFocusOutline:Lcom/sec/daliviews/views/ImageView;

.field private mFocusOutlineBitmap:Landroid/graphics/Bitmap;

.field private mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mFocusedAndroidView:Landroid/view/View;

.field private mFollowFinger:Z

.field mGranularityObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHomeNodeInfoProvider:Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;

.field private mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field private mHoverDownX:F

.field private mHoverDownY:F

.field private mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mKeypadFocusAttached:Z

.field private mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

.field private mPackageName:Ljava/lang/CharSequence;

.field private mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mRootView:Lcom/sec/daliviews/views/ContainerView;

.field mSingleTapObserver:Landroid/database/ContentObserver;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

.field private needtoSetFocusViewInNextRight:Z

.field separator:Ljava/lang/String;

.field separatorLength:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;Lcom/sec/daliviews/views/ContainerView;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFollowFinger:Z

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusAttached:Z

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusAttached:Z

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHandler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPackageName:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mClassName:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->islargeCursorEnabled:Z

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->needtoSetFocusViewInNextRight:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->isSingleTapActivated:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->isFocusedViewReadingAllowed:Z

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomeNodeInfoProvider:Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPackageName:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object p4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iput-object p5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {p3}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mClassName:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->createResources()V

    new-instance v0, Lcom/sec/android/app/launcher/activities/Accessibility$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/Accessibility$1;-><init>(Lcom/sec/android/app/launcher/activities/Accessibility;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/Accessibility$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/Accessibility$2;-><init>(Lcom/sec/android/app/launcher/activities/Accessibility;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->isInAccessibilityMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAccessibilityEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_non_web_granularity"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->onGranularityChange(I)V

    new-instance v0, Lcom/sec/android/app/launcher/activities/Accessibility$3;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/launcher/activities/Accessibility$3;-><init>(Lcom/sec/android/app/launcher/activities/Accessibility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mGranularityObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_non_web_granularity"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mGranularityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/sec/android/app/launcher/activities/Accessibility$4;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/launcher/activities/Accessibility$4;-><init>(Lcom/sec/android/app/launcher/activities/Accessibility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityContextMenuTypeObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_contextmenu_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->isFocusedViewReadingAllowed:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_contextmenu_type"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityContextMenuTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_single_tap_selection"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->isSingleTapActivated:Z

    new-instance v0, Lcom/sec/android/app/launcher/activities/Accessibility$5;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility$5;-><init>(Lcom/sec/android/app/launcher/activities/Accessibility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSingleTapObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_single_tap_selection"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSingleTapObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created with PackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPackageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ClassName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mClassName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->resetCounters()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/Accessibility;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/Accessibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideSelection()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/android/app/launcher/activities/LauncherActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/Accessibility;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/Accessibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->setFollowMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/Accessibility;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->childParentMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->setContentDescription(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method private createResources()V
    .locals 9

    const/16 v4, 0x64

    const/4 v3, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020085

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutlineBitmap:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutlineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v7, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Lcom/sec/daliviews/views/ImageView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ImageView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutlineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f020068

    invoke-static {v0, v2, v8}, Lcom/sec/daliviews/utils/BitmapUtils;->decodeNinePatch(Landroid/content/Context;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Lcom/sec/daliviews/views/ImageView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ImageView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/ImageView;->setNinePatchImage(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public static dumpAccessibilityEvent(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessibilityEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Text=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", numRec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getTalkBackContent()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v1, v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTitle()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v1, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->getTitle()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->getAccessibilityText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->populateAccessibilityEventText(Lcom/sec/daliviews/views/NativeViewBase;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleWidgetsAndroidViewAccessibility(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method private hideSelection()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->hideSelectHighlight()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusAttached:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method

.method private isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->isFocusableInTouchMode()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isFocusable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->removeFocus()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v2, "NULL object in isFocusable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isViewInHotSeat(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getRootView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private navigate(Lcom/sec/daliviews/views/NativeViewBase;ZFFLcom/sec/android/app/launcher/activities/PresenterBase;Z)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p5, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigateInsideEditHomeScreen(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigateInsideHomePresenter(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p5, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigateInsideAppsPresenter(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p5, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigateInsideWidgetsPresenter(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0
.end method

.method private navigateInsideAppsPresenter(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 5

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->isFolderOpened()Z

    move-result v0

    if-eqz p2, :cond_2

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_1
    return-object p1

    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v3, "Swipe Right"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getFirstItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getLastItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getLastItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    invoke-virtual {v2, v4, p5}, Lcom/sec/daliviews/views/ContainerViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v4, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigateInsideFolder(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v3, "Swipe Left"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_c

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListMode()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    if-ne v2, v3, :cond_9

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/launcher/views/HomeFolderView;

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object p1

    :goto_1
    if-eqz v1, :cond_0

    move-object p1, v1

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    if-ne p1, v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getLastItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getFirstItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    if-ne p1, v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    goto :goto_1

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {p1, v2, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    goto :goto_1

    :cond_c
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigateInsideFolder(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private navigateInsideEditHomeScreen(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getCurrentView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getView(I)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v1

    iget-object p1, v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCancelDonePresenter()Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getDoneButton()Lcom/sec/daliviews/views/TextView;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCancelDonePresenter()Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getDoneButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getNextView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object p1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v2, "Swipe Left"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    if-ne p1, v1, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getView(I)Lcom/sec/daliviews/views/ContainerView;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->setCurrentButton(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    if-ne p1, v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v1

    iget-object p1, v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCancelDonePresenter()Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getDoneButton()Lcom/sec/daliviews/views/TextView;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getView(I)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    if-ne p1, v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCancelDonePresenter()Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getDoneButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_c

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getView(I)Lcom/sec/daliviews/views/ContainerView;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getPrevView()Lcom/sec/daliviews/views/ContainerView;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private navigateInsideFolder(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 8

    move-object v3, p1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v2

    const/4 v1, 0x0

    instance-of v4, v2, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/EditTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_1
    if-nez p2, :cond_3

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_7

    instance-of v4, p1, Lcom/sec/daliviews/views/TextView;

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x453b8000    # 3000.0f

    invoke-virtual {v4, v5, v6}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v4

    if-ne p1, v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getEditTextView()Landroid/widget/EditText;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->requestAccessibilityFocusOnAndroidView(Landroid/view/View;)V

    :cond_3
    return-object p1

    :cond_4
    instance-of v4, v2, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getAppsFolderPresenter()Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    invoke-virtual {p1, v4, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v4

    const v5, 0x44898000    # 1100.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    const/4 v5, 0x1

    const v6, 0x453b8000    # 3000.0f

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    :cond_6
    instance-of v4, v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getLastItem()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object p1

    goto :goto_1

    :cond_7
    instance-of v4, p1, Lcom/sec/daliviews/views/TextView;

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getLastItem()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v4

    const v5, 0x44898000    # 1100.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    const/4 v5, 0x1

    const v6, 0x453b8000    # 3000.0f

    invoke-virtual {v4, v5, v6}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuously(IF)V

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    invoke-virtual {p1, v4, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getOpenFolderGridLayout()Lcom/sec/daliviews/layouts/GridLayout;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x453b8000    # 3000.0f

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/daliviews/layouts/GridLayout;->scrollContinuouslyBySize(IFF)V

    :cond_9
    instance-of v4, v3, Lcom/sec/android/app/launcher/views/HomeItemView;

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object p1

    goto/16 :goto_1
.end method

.method private navigateInsideHomePresenter(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->getPeer()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderOpened()Z

    move-result v0

    if-eqz p2, :cond_2

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_1
    return-object p1

    :cond_2
    instance-of v4, p1, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/AppWidgetView;->removeAccessibilityFocus()V

    :cond_3
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v5, "Swipe Right"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/PageView;->selectFocusPeerLast(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Next Focus view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v7, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/PageView;->selectFocusPeerLast(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    if-ne p1, v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAppsItem()Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    if-ne p1, v4, :cond_7

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->selectFocus()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v7, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_1

    :cond_8
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigateInsideFolder(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v5, "Swipe Left"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_e

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    if-ne p1, v4, :cond_b

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/PageView;->selectFocusPeerLast(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Next Focus view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/PageView;->selectFocus()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    if-ne p1, v4, :cond_d

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    if-nez p1, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPagePresenter()Lcom/sec/android/app/launcher/activities/PagePresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/PagePresenter;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_2

    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTopFivePresenter:Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAppsItem()Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_2

    :cond_d
    invoke-virtual {p1, v6, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_2

    :cond_e
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigateInsideFolder(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_2
.end method

.method private navigateInsideWidgetsPresenter(Lcom/sec/daliviews/views/NativeViewBase;ZFFZ)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_2

    :goto_0
    return-object p1

    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v2, "Swipe Right"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v5, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getLastWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideFocus()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v5, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v2, "Swipe Left"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-ne p1, v1, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1, v3, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getFirstWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    if-ne p1, v1, :cond_9

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideFocus()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1, v3, p5}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private populateAccessibilityEventText(Lcom/sec/daliviews/views/NativeViewBase;)Ljava/lang/String;
    .locals 6

    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->getOrGenerateId(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/NativeViewBase;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestAccessibilityFocusOnAndroidView(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "requestAccessibilityFocus"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private resetCounters()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->getTalkBackContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContentForTalkback:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    return-void
.end method

.method private setFollowMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFollowFinger:Z

    return-void
.end method

.method private setInitialFocusedItem(Lcom/sec/android/app/launcher/activities/PresenterBase;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->removeFocus()V

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->isColorPickerVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getColorPicker()Lcom/sec/android/app/launcher/views/FolderColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/FolderColorPicker;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getTitleView()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getEditBarPresenter()Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mTitleBar:Lcom/sec/daliviews/views/ContainerView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->selectFocus()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_6
    instance-of v1, p1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v1, :cond_7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getCurrentTopButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_8
    instance-of v1, p1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v1, :cond_9

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_c

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->isPopupMenuVisible()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    if-eqz p2, :cond_14

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getLastWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v2

    if-ne v1, v2, :cond_d

    if-nez p2, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    goto :goto_1

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v2

    if-ne v1, v2, :cond_b

    if-eqz p2, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_10

    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    goto/16 :goto_1

    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v2

    if-ne v1, v2, :cond_11

    if-nez p2, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallText()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallText()Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_b

    if-eqz p2, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    goto/16 :goto_1

    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_1

    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    goto/16 :goto_1

    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getFirstWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v2

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_16

    if-nez p2, :cond_16

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->needtoSetFocusViewInNextRight:Z

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;

    move-result-object v2

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_17

    if-nez p2, :cond_17

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->needtoSetFocusViewInNextRight:Z

    if-eqz v1, :cond_17

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->needtoSetFocusViewInNextRight:Z

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getFirstWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v2

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->getBackButton()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz p2, :cond_18

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getLastWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallText()Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p2, :cond_19

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->needtoSetFocusViewInNextRight:Z

    goto/16 :goto_0

    :cond_19
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallText()Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    if-nez p2, :cond_1a

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->needtoSetFocusViewInNextRight:Z

    if-eqz v1, :cond_1a

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->needtoSetFocusViewInNextRight:Z

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getFirstWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_1a
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v2

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallBar()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getUninstallbackButton()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz p2, :cond_1b

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    iput-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getLastWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_1

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    goto/16 :goto_0
.end method

.method private setLastFocusedItem(Lcom/sec/android/app/launcher/activities/PresenterBase;Z)V
    .locals 9

    instance-of v5, p1, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->isFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getFolderPresenter()Lcom/sec/android/app/launcher/activities/FolderPresenterBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase;->getActiveFolderItem()Lcom/sec/android/app/launcher/data/FolderItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getOpenFolderView()Lcom/sec/android/app/launcher/views/HomeOpenFolderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/views/HomeOpenFolderView;->getLastItem()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentMode()Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    move-result-object v5

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->PAGE_EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v5

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->EDIT_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getOptionTrayPresenter()Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getMaxOptions()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/OptionTrayPresenter;->getView(I)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v5

    sget-object v8, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCancelDonePresenter()Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->getDoneButton()Lcom/sec/daliviews/views/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v5

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v5, v8}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getItemAt(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->isValidPeer()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/sec/daliviews/views/PageView;->getPeer()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/daliviews/views/PageView;->selectFocusPeerLast(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getTopFivePresenter()Lcom/sec/android/app/launcher/activities/TopFivePresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/TopFivePresenter;->getAppsItem()Lcom/sec/android/app/launcher/data/HomeItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_6
    instance-of v5, p1, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-nez v5, :cond_7

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getLastItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_8
    instance-of v5, p1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v5, :cond_9

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetListFolderItemView()Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;->getFolderView()Lcom/sec/android/app/launcher/views/WidgetFolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/WidgetFolderView;->getAdapter()Lcom/sec/daliviews/views/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Lcom/sec/daliviews/views/ListAdapter;->getItem(I)Lcom/sec/daliviews/views/Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->getOptionsButton()Landroid/widget/TextView;

    move-result-object v8

    if-ne v5, v8, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->isPopupMenuVisible()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getSearchBar()Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->isVisible()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusedAndroidView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAndroidRoot()Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mWidgetsPresenter:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getLastWidgetItemAtCurrentPage()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    goto/16 :goto_0
.end method

.method private showFocus()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearSelectionArea()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->islargeCursorEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutlineBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutlineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutlineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->showFocusHighlight(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-static {v2}, Lcom/sec/daliviews/views/NativeViewBase;->setFocusedView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->resetCounters()V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusAttached:Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private showSelection()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->showSelectHighlight(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusAttached:Z

    return-void
.end method


# virtual methods
.method public allowedToSendAccessibilityEvents()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public announce(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->isInAccessibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->getOrGenerateId(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->dumpAccessibilityEvent(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1
.end method

.method public clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "clearAccessibilityFocus"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public clearSelectionArea()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/LauncherActivity;->mKeyboardAndMouseHandler:Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/KeyboardAndMouseHandler;->hideSelection()V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeypadFocusOutline:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityStateChangeListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mGranularityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSingleTapObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public genClick(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->getOrGenerateId(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->dumpAccessibilityEvent(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1
.end method

.method public genFocusEvent()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->isInAccessibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x8000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->dumpAccessibilityEvent(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->requestAccessibilityFocusOnAndroidView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    goto :goto_0
.end method

.method public genLongClick(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->getOrGenerateId(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->dumpAccessibilityEvent(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1
.end method

.method public genScroll(Lcom/sec/daliviews/views/NativeViewBase;III)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->allowedToSendAccessibilityEvents()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v2, 0x1000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->getOrGenerateId(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public genWindowStateChanged(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/activities/PresenterBase;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    instance-of v1, p2, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-static {p1}, Lcom/sec/android/app/launcher/activities/Accessibility$AccessibilityIdGenerator;->getOrGenerateId(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->dumpAccessibilityEvent(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    :cond_4
    instance-of v1, p2, Lcom/sec/android/app/launcher/activities/AppsPresenter;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v3, 0x7f0d0020

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    instance-of v1, p2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v3, 0x7f0d00ce

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomeNodeInfoProvider:Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;-><init>(Lcom/sec/android/app/launcher/activities/Accessibility;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomeNodeInfoProvider:Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomeNodeInfoProvider:Lcom/sec/android/app/launcher/activities/Accessibility$HomeNodeInfoProvider;

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public getFocusedView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method public getLargeCursorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->islargeCursorEnabled:Z

    return v0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->showSelection()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->showFocus()V

    :cond_0
    :goto_1
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v2, "DPAD Down"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->selectFocus()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next Focus view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v2, "DPAD Up"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->selectFocus()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next Focus view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v2, "DPAD Right"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->selectFocus()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next Focus view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_4

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v2, "DPAD Left"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->selectFocus()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next Focus view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1, v4, v4}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideSelection()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_HOVER_ENTER"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAccessibilityMode(Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFollowFinger:Z

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/launcher/activities/Accessibility$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/Accessibility$7;-><init>(Lcom/sec/android/app/launcher/activities/Accessibility;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHoverDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHoverDownY:F

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHoverDownX:F

    iget v6, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHoverDownY:F

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/sec/daliviews/views/ContainerView;->selectFocus(JIFFI)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v2, :cond_1

    if-eqz v8, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v2, v2, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v2, :cond_4

    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request Content Description for SurafceWidgetView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v2, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->requestContentDescription()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->showFocus()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    :goto_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    :cond_1
    :goto_2
    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setAccessibilityMode(Z)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_HOVER_MOVE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/sec/daliviews/views/ContainerView;->selectFocus(JIFFI)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFollowFinger:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->genFocusEvent()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mRootView:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/sec/daliviews/views/ContainerView;->selectFocus(JIFFI)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->isFocussable(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initial Focus view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v2, v2, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v2, v2, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v2, Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/AppWidgetView;->removeAccessibilityFocus()V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->showFocus()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v2, v2, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v2, Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/AppWidgetView;->removeAccessibilityFocus()V

    :cond_7
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->showFocus()V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v2, v2, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideFocus()V

    goto/16 :goto_2

    :cond_9
    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->isSingleTapActivated:Z

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFollowFinger:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v9}, Landroid/view/SurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x1

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v10}, Landroid/view/SurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto/16 :goto_2
.end method

.method public hideFocus()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusAttached:Z

    :cond_1
    return-void
.end method

.method public isFocusAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusAttached:Z

    return v0
.end method

.method public isInAccessibilityMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigate(ZZZZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mFocusView:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "||up:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "||down:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "||left:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "||right:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_9

    :cond_1
    if-ne p3, v0, :cond_2

    move v2, v0

    :cond_2
    invoke-direct {p0, v5, v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->setInitialFocusedItem(Lcom/sec/android/app/launcher/activities/PresenterBase;Z)V

    :cond_3
    :goto_0
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_8

    instance-of v0, v5, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->requestAccessibilityFocusOnAndroidView(Landroid/view/View;)V

    :cond_4
    if-eqz v7, :cond_8

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f0d002e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    :cond_5
    :goto_1
    const/4 v8, 0x0

    if-nez p2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    const/16 v8, 0x708

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/Accessibility$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/Accessibility$6;-><init>(Lcom/sec/android/app/launcher/activities/Accessibility;)V

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->showFocus()V

    :cond_8
    return-void

    :cond_9
    if-eqz p1, :cond_a

    invoke-direct {p0, v5, v2}, Lcom/sec/android/app/launcher/activities/Accessibility;->setLastFocusedItem(Lcom/sec/android/app/launcher/activities/PresenterBase;Z)V

    goto :goto_0

    :cond_a
    if-eqz p3, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(Lcom/sec/daliviews/views/NativeViewBase;ZFFLcom/sec/android/app/launcher/activities/PresenterBase;Z)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_b
    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/launcher/activities/Accessibility;->navigate(Lcom/sec/daliviews/views/NativeViewBase;ZFFLcom/sec/android/app/launcher/activities/PresenterBase;Z)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_0

    :cond_c
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f0d002f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onGranularityChange(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->PARAGRAPH_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separatorLength:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->LINE_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string v0, "\n"

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separatorLength:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->WORD_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    const-string v0, "[ .,?!]"

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separatorLength:I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->CHARACTER_GRANULARITY:Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$TalkbackGranularityState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separatorLength:I

    goto :goto_0
.end method

.method public pageChange()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->clearAccessibilityFocusOnAndroidViews(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v1, v1, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v1, Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->removeAccessibilityFocus()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/Accessibility;->isViewInHotSeat(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideSelection()V

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mKeyFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mDetectedView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-static {v2}, Lcom/sec/daliviews/views/NativeViewBase;->setFocusedView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void
.end method

.method public readTextOfFocusedView(I)V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->isFocusedViewReadingAllowed:Z

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v7, Lcom/sec/android/app/launcher/activities/Accessibility$DIRECTION;->DIRECTION_START:Lcom/sec/android/app/launcher/activities/Accessibility$DIRECTION;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/Accessibility$DIRECTION;->ordinal()I

    move-result v7

    if-ne p1, v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContentForTalkback:Ljava/lang/String;

    iget v8, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContentForTalkback:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, v1

    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v2, v5

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_2
    array-length v7, v1

    if-ge v4, v7, :cond_0

    const-string v7, ""

    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    aget-object v8, v1, v4

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    iget v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separatorLength:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    iget v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContentForTalkback:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContentForTalkback:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "} cursor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v7, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContentForTalkback:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] cursor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-object v7, Lcom/sec/android/app/launcher/activities/Accessibility$DIRECTION;->DIRECTION_END:Lcom/sec/android/app/launcher/activities/Accessibility$DIRECTION;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/Accessibility$DIRECTION;->ordinal()I

    move-result v7

    if-ne p1, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContentForTalkback:Ljava/lang/String;

    iget v8, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v1, v8

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    iget v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separatorLength:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    iget v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    if-gez v7, :cond_7

    iput v10, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "END:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "} cursor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0, v7, v3}, Lcom/sec/android/app/launcher/activities/Accessibility;->announce(Lcom/sec/daliviews/views/NativeViewBase;Ljava/lang/String;)V

    iput v10, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "END:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] cursor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->cursorIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public removeFocus()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->hideFocus()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast v0, Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->removeAccessibilityFocus()V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-static {v1}, Lcom/sec/daliviews/views/NativeViewBase;->setFocusedView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/Accessibility;->handleWidgetsAndroidViewAccessibility(Z)V

    :cond_1
    return-void
.end method

.method public setLargeCursorEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->islargeCursorEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->isInAccessibilityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/Accessibility;->showFocus()V

    :cond_0
    return-void
.end method

.method public showFocus(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mPreviousFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->islargeCursorEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutlineBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutlineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutlineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusOutline:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->showFocusHighlight(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-static {v2}, Lcom/sec/daliviews/views/NativeViewBase;->setFocusedView(Lcom/sec/daliviews/views/NativeViewBase;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mFocusAttached:Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/Accessibility;->mContext:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method
