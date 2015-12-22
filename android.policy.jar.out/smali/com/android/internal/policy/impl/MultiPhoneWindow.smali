.class public Lcom/android/internal/policy/impl/MultiPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final DEBUG_FLOATING_BGCOLOR:Z

.field static final DEBUG_FLOATING_CYCLE:Z

.field static final DEBUG_FLOATING_SIZE:Z

.field static final DEBUG_GUIDEVIEW:Z = false

.field public static final DEBUG_MINIMIZE_ANIM:Z

.field static final DEBUG_ORIENTATION:Z

.field static final DEBUG_RESIZE_VISUAL_CUE:Z

.field static final DEBUG_TAB:Z

.field private static final DRAG_AND_DROP_TIMER_TIME:I = 0x2bc

.field public static final FEATURE_DISABLE_LEFT_RESIZE:Z = true

.field public static final FEATURE_GUIDE_MOVE_LAYOUT_ENABLED:Z = true

.field private static final LOGGING_REASON_DOCKING:I = 0x1

.field private static final MESSAGE_REQUEST_MAXIMIZE:I = 0x68

.field private static final MESSAGE_REQUEST_STATE:I = 0x64

.field private static final MESSAGE_REQUEST_STATE_CASCADE:I = 0x66

.field private static final MESSAGE_SEND_TOUCH_EVENT:I = 0x67

.field private static final STATE_FLOATING:I = 0x2

.field private static final STATE_MINIMIZED_FLOATING:I = 0x4

.field private static final STATE_NONE:I = -0x1

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"


# instance fields
.field private final NOT_SET:I

.field protected final TEMP_TOAST_HEIGHT:I

.field private mActivity:Landroid/app/Activity;

.field private mBlackColor:Landroid/graphics/drawable/ColorDrawable;

.field private mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

.field private mConsumeTouchEvent:Z

.field private mContentLayoutGenerated:Z

.field private mContentRootBackground:Landroid/graphics/drawable/Drawable;

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomMinimizeView:Landroid/view/View;

.field private mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

.field private mDecorBackground:Landroid/graphics/drawable/Drawable;

.field private mDismissGuideByDockingCanceled:Z

.field private mDisplayGapRatio:F

.field private mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

.field private mDragMode:Z

.field mDragModeReceiver:Landroid/content/BroadcastReceiver;

.field private mFloatingFlag:I

.field private mFloatingMenuRightMargin:I

.field private mFocusedViewId:I

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHScale:F

.field mHandler:Landroid/os/Handler;

.field private mHasStackFocus:Z

.field private mHeaderButtonSoundId:I

.field private mInitialFlag:I

.field private mIsAttachedToWindow:Z

.field private mIsBorderShown:Z

.field private mIsFinishing:Z

.field private mIsFullScreen:Z

.field private mIsMinimizeDisabled:Z

.field private mIsPenButtonPressed:Z

.field private mIsSecure:Z

.field private final mIsSupportDiagonalResizable:Z

.field private final mIsSupportMinimizeAnimation:Z

.field private final mIsSupportResizeVisualCue:Z

.field private final mIsSupportSelective1Orientation:Z

.field private mIvt:[B

.field private mLastHoverIcon:I

.field private mLastOrientation:I

.field private mLastRealDisplayFrame:Landroid/graphics/Rect;

.field private mLastRotated:Z

.field private mLastStackBound:Landroid/graphics/Rect;

.field private mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

.field private mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

.field private mMaxSizeRatio:F

.field private mMinStackBoundForLand:Landroid/graphics/Rect;

.field private mMinStackBoundForPort:Landroid/graphics/Rect;

.field private mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

.field private mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

.field private mMinimizedIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizedLabel:Ljava/lang/CharSequence;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mSubWindow:Landroid/view/Window;

.field private mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

.field private mTargetSdkVersion:I

.field private mThickness:I

.field private mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

.field private mTitleBarHeight:I

.field private mTmpBound:Landroid/graphics/Rect;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mUndesirableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVScale:F

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVideoCapabilityDialog:Landroid/app/AlertDialog;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

.field private mWindowIconic:Landroid/view/View;

.field private mWindowIconicFrame:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_SIZE:Z

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_BGCOLOR:Z

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_7

    :goto_6
    sput-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, -0x1

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFinishing:Z

    iput v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->NOT_SET:I

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSecure:Z

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iput v13, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    const v7, 0x3f666666    # 0.9f

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDisplayGapRatio:F

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/16 v7, 0x28

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->TEMP_TOAST_HEIGHT:I

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsAttachedToWindow:Z

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mConsumeTouchEvent:Z

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v8, -0x1000000

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z

    iput v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I

    iput v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeaderButtonSoundId:I

    const/16 v7, 0x1a

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    iput v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    iput v13, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    iput v13, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    iput v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    new-instance v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v8, "multiwindow_facade"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/SystemVibrator;

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportResizeVisualCue(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTargetSdkVersion:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v7, v7, Landroid/app/Activity;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    new-instance v7, Lcom/android/internal/policy/impl/multiwindow/Docking;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-direct {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;-><init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    new-instance v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;)V

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    if-le v7, v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    iput v7, v0, Landroid/graphics/Point;->x:I

    iput v5, v0, Landroid/graphics/Point;->y:I

    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00dc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-instance v4, Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v7, v1

    int-to-float v7, v7

    div-float/2addr v7, v11

    float-to-int v7, v7

    iget v8, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v1

    int-to-float v8, v8

    div-float/2addr v8, v11

    float-to-int v8, v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v11

    float-to-int v7, v7

    iget v8, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v2

    int-to-float v8, v8

    div-float/2addr v8, v11

    float-to-int v8, v8

    invoke-direct {v3, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    sget-boolean v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_SIZE:Z

    if-eqz v7, :cond_3

    const-string v7, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MultiPhoneWindow : mMinStackBoundForPort"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMinStackBoundForLand="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initResource()V

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    iget v7, v0, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    if-le v7, v8, :cond_1

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Point;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isInputMethodShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    return-void
.end method

.method static synthetic access$4402(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/impl/MultiPhoneWindow;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeIconPressed(ZZ)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkDecorViewChildVisibility()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mConsumeTouchEvent:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mConsumeTouchEvent:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/internal/policy/impl/MultiPhoneWindow;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFinishing:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFinishing:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeaderButtonSoundId:I

    return v0
.end method

.method static synthetic access$8300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return v0
.end method

.method static synthetic access$8302(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return p1
.end method

.method static synthetic access$9100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTargetSdkVersion:I

    return v0
.end method

.method static synthetic access$9200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method private adjustMinimizedStackBound(Landroid/graphics/Rect;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105022d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v5, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v1

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_2

    iget v5, p1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    iget v5, v4, Landroid/graphics/Point;->y:I

    if-le v0, v5, :cond_3

    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2

    :cond_2
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-le v3, v5, :cond_0

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private adjustScaleFactor()V
    .locals 6

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-lt v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    sget-boolean v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_4

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor mStackBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_5

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor result hScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",vScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerGlobal;->setMultiWindowScale(FF)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    :cond_6
    return-void
.end method

.method private adjustStackBound(Landroid/graphics/Rect;)V
    .locals 14

    const/4 v13, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v0, v11, 0x3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v1, v11, 0x3

    const/4 v6, 0x0

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    iget-object v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v12

    add-int v0, v11, v12

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x105024a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v11

    div-int/lit8 v6, v11, 0x2

    :cond_0
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    const/4 v11, 0x1

    invoke-direct {p0, v9, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v10

    iget v5, v9, Landroid/graphics/Point;->x:I

    iget v4, v9, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-eq v11, v5, :cond_2

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-eq v11, v4, :cond_2

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v11, v3, 0x2

    sub-int v11, v8, v11

    div-int/lit8 v12, v2, 0x2

    sub-int v12, v7, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v13, v13, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v11, p1, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v0

    if-le v11, v12, :cond_4

    iget v11, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v0

    iget v12, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_3
    :goto_1
    iget v11, p1, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v1

    if-le v11, v12, :cond_5

    iget v11, p1, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v1

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_4
    iget v11, p1, Landroid/graphics/Rect;->right:I

    if-ge v11, v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int v11, v0, v11

    iget v12, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_5
    iget v11, p1, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v12, v6

    if-ge v11, v12, :cond_1

    iget v11, p1, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v12, v6

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method private checkDecorViewChildVisibility()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkMaxStackSize(Landroid/graphics/Rect;I)Z
    .locals 24

    const/4 v11, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v9, v0

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    :goto_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v8, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v17, v6

    check-cast v17, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    move-object/from16 v0, v17

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I
    invoke-static {v0, v13}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->access$802(Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;I)I

    check-cast v6, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I
    invoke-static {v6, v12}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->access$902(Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;I)I

    :cond_0
    move/from16 v0, v16

    if-lt v0, v13, :cond_1

    if-lt v10, v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    if-eqz v15, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v12

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    move/from16 v0, v16

    if-le v0, v9, :cond_7

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    :goto_3
    return v11

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x2

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    goto/16 :goto_2

    :cond_7
    if-le v10, v7, :cond_3

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3
.end method

.method private checkRotationNeeded(I)Z
    .locals 7

    const/4 v6, -0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getExpectedOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eq v0, v6, :cond_2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v2

    if-nez v4, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v0, :cond_3

    const/4 v4, 0x0

    :cond_3
    return v4
.end method

.method private dismissGuide()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissWritingBuddy()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish()V

    goto :goto_0
.end method

.method private forceHideInputMethod()Z
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generatePenWindowLayout()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109007f

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    const v4, 0x1090081

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    :cond_2
    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->generateLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object v4, v1

    check-cast v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initMinimizeView()V

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    goto/16 :goto_0
.end method

.method private getDisplaySize(Landroid/graphics/Point;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method private getDisplaySize(Landroid/graphics/Point;Z)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private getExplicitOrientation(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method private getState()I
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initFocusedView()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    return-void
.end method

.method private initMinimizeView()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v1, 0x10203b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v1, 0x10203b5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->resetResolvedLayoutDirection()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method private initResource()V
    .locals 4

    const v2, 0x1050241

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v2, 0x110001a

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeaderButtonSoundId:I

    return-void
.end method

.method private initStackBound(ZZ)V
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget v7, v1, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    if-le v7, v8, :cond_4

    move v2, v5

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v7, v8, :cond_5

    move v3, v5

    :goto_1
    if-eqz v2, :cond_6

    const/4 v4, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v2, :cond_7

    move v2, v5

    :cond_1
    :goto_3
    if-eq v3, v2, :cond_2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    if-eqz v2, :cond_9

    :goto_4
    invoke-direct {p0, v0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    :cond_3
    return-void

    :cond_4
    move v2, v6

    goto :goto_0

    :cond_5
    move v3, v6

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    goto :goto_2

    :cond_7
    move v2, v6

    goto :goto_3

    :cond_8
    if-nez p2, :cond_1

    move v2, v3

    goto :goto_3

    :cond_9
    const/4 v5, 0x2

    goto :goto_4
.end method

.method private isInputMethodShown()Z
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRotated(I)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private minimizeIconPressed(ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method private moveStackBound(IIZ)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBound(Landroid/graphics/Rect;)Z

    move-result v0

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    return v0

    :cond_1
    if-nez p3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private playBubbleAnimation()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MultiPhoneWindow"

    const-string v4, "playBubbleAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->saveFocusedView()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_7
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v4, 0x10a0048

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->addWindow()Landroid/view/Window;

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method private refreshBorder()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Border;->setFocus(Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private refreshUI(I)V
    .locals 12

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, -0x1

    const/4 v8, -0x1

    if-eq p1, v8, :cond_3

    move v6, p1

    :goto_1
    sget-boolean v8, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v8, :cond_2

    const-string v8, "MultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshUI state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_4

    sget-boolean v8, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MultiPhoneWindow"

    const-string v9, "token is null"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v6

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v8, 0x4

    if-eq v6, v8, :cond_6

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSecure:Z

    if-eqz v8, :cond_5

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_5
    :goto_2
    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_5

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, -0x2001

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSecure:Z

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_8
    :goto_4
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    packed-switch v6, :pswitch_data_0

    :cond_9
    :goto_5
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v8, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_8

    const-string v8, "MultiPhoneWindow"

    const-string v9, "It has DecorView child views"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkDecorViewChildVisibility()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :pswitch_0
    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    :cond_b
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->setVisibility(Z)V

    :cond_d
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_e

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initFocusedView()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_11

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, -0x201

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_11
    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    if-nez v8, :cond_12

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_13

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_13

    :cond_12
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x4000000

    or-int/2addr v8, v9

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    :cond_13
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeWindow()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_5

    :pswitch_1
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v8, :cond_15

    const-string v8, "MultiPhoneWindow"

    const-string v9, "minimize function is disabled. do not minimize."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_16

    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    :cond_16
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->setVisibility(Z)V

    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1a

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_1a

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_19

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    :cond_18
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_19
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_18

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1a
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x4000001

    and-int/2addr v8, v9

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->playBubbleAnimation()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_5

    :pswitch_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_1b
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->setVisibility(Z)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->refresh()V

    :cond_1c
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->removeTab(I)Z

    :cond_1d
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1e

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_1f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->restoreFocusedView()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_21

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    if-nez v8, :cond_21

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x4000001

    and-int/2addr v8, v9

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    :cond_21
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v8, :cond_22

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeWindow()V

    :cond_22
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshBorder()V

    goto/16 :goto_5

    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_23

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_23
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_24

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_25
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initFocusedView()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_26

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_26
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeWindow()V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private requestState(I)V
    .locals 9

    const/16 v8, 0x800

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v8, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v1, :cond_2

    const-string v1, "MultiPhoneWindow"

    const-string v2, "minimize function is disabled. do not minimize"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    :cond_3
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private restoreFocusedView()V
    .locals 4

    const/4 v3, -0x1

    iget v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    :cond_1
    return-void
.end method

.method private saveFocusedView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    :cond_0
    return-void
.end method

.method private setMinimizeViewVisibility(I)V
    .locals 4

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinimizeViewVisibility() visibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :sswitch_0
    const-string v0, "VISIBLE"

    goto :goto_0

    :sswitch_1
    const-string v0, "INVISIBLE"

    goto :goto_0

    :sswitch_2
    const-string v0, "GONE"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private setMinimizedDrawable(Landroid/widget/ImageView;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->isUsedTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->makeMinimizeIcons(Z)Landroid/widget/ImageView;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->isUsedTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private setStackBoundInScreen(IIZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-ge v3, p1, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int v3, p1, v3

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x1

    :cond_0
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-ge v3, p2, :cond_1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x1

    :cond_1
    if-nez p3, :cond_3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x1

    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_3

    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method private setStackFocus(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Landroid/view/Window;->changeStackFocus(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshBorder()V

    goto :goto_0
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v5, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int v2, v3, v4

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, v5, v5, v2, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v0, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, v5, v5, v2, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v3, v5, v5, v5, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    goto :goto_0
.end method

.method private showGuide(Landroid/graphics/Rect;I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private updateLastRealDisplayFrame()V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eq v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method private updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 3

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMultiWindowStyle style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissWritingBuddy()V

    :cond_1
    return-void
.end method

.method private validateStackBound(Landroid/graphics/Rect;)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v1, v3, :cond_2

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-le v1, v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v1, v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_4

    const-string v3, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateStackBound "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", bound=Point("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", screenSize="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v2

    goto/16 :goto_0

    :cond_5
    const-string v1, ""

    goto :goto_1
.end method


# virtual methods
.method public arrangeScaleStackBound()V
    .locals 14

    const/4 v1, 0x2

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isResumed()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    if-ne v9, v1, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkRotationNeeded(I)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_4
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v3, Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    if-eqz v9, :cond_7

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v2, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget v9, v2, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    if-le v9, v10, :cond_5

    move v1, v8

    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v5

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-ne v1, v8, :cond_9

    const/4 v1, 0x2

    :cond_6
    :goto_3
    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->updatePosition()V

    goto/16 :goto_0

    :cond_8
    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    if-ne v9, v8, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ge v9, v10, :cond_2

    const/4 v0, 0x1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public disableMultiWindowTrayBar(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_0
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public exitByCloseBtn()V
    .locals 4

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MultiPhoneWindow"

    const-string v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "SPLW"

    const-string v3, "CLOSE"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 3

    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/Border;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->generatePenWindowLayout()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8d4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    :cond_1
    return-object v0
.end method

.method public getContentRootContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getOptionsPanelGravity()I
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-ne v1, v5, :cond_1

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    const/16 v3, 0x51

    :goto_0
    return v3

    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_0
.end method

.method public getScaleInfo()Landroid/graphics/PointF;
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handlePause()V
    .locals 6

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$4;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isFloatingWindow()Z
    .locals 2

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchBlocked()Z
    .locals 7

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v5, 0x1000

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x800000

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v5

    if-eq v2, v5, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public minimizeWindow(IZ)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public multiWindow(IZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method protected needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isFloatingWindow()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public normalWindow(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 22

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v18, :cond_3

    const-string v19, "MultiPhoneWindow"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onMultiWindowConfigurationChanged "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "oldRect="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getRotation()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v15, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    :cond_4
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_5
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_6
    const-string v18, ""

    goto/16 :goto_1

    :pswitch_1
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    if-eqz v14, :cond_7

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_d

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v19, 0x400000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v18

    if-eqz v18, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-nez v18, :cond_0

    :cond_9
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v18, v19

    const/16 v18, 0x0

    cmpl-float v18, v12, v18

    if-lez v18, :cond_a

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    if-lez v18, :cond_a

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v18, v18, v11

    add-float v19, v11, v12

    div-float v11, v18, v19

    :cond_a
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3851b717    # 5.0E-5f

    add-float v19, v19, v11

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3851b717    # 5.0E-5f

    add-float v20, v20, v13

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_b
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBound(Landroid/graphics/Rect;)Z

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto/16 :goto_0

    :cond_d
    new-instance v8, Landroid/graphics/Rect;

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-nez v18, :cond_c

    goto/16 :goto_0

    :pswitch_2
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-gez v18, :cond_13

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v4, v0

    :cond_f
    :goto_3
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    :cond_10
    :goto_4
    if-nez v4, :cond_11

    if-eqz v5, :cond_12

    :cond_11
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_13
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    goto :goto_3

    :cond_14
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowFocusChanged(IZ)V
    .locals 5

    const/4 v4, -0x1

    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiWindowFocusChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackFocus(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->closeAllPanels()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_6

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    if-eq v1, v0, :cond_5

    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FocusChanged Refresh mIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x4

    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v5, :cond_0

    const-string v5, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMultiWindowStyleChanged style:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",notifyReason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",OldStyle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->refresh()V

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v5, 0x800000

    invoke-virtual {p1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_4

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v12, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v3

    if-eq v3, v10, :cond_2

    if-eq v3, v12, :cond_7

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    :cond_8
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_2

    const/high16 v5, 0x20000

    invoke-virtual {p1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_0

    :cond_a
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v5, :cond_b

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-eq v5, v8, :cond_11

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-eqz v5, :cond_10

    move v5, v6

    :goto_1
    invoke-interface {v8, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    :cond_b
    :goto_2
    invoke-virtual {p1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-eq v5, v8, :cond_c

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    :cond_c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    if-ne v3, v6, :cond_12

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    :cond_d
    :goto_3
    invoke-direct {p0, v7, v7, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->playBubbleAnimation()V

    goto/16 :goto_0

    :cond_10
    move v5, v7

    goto :goto_1

    :cond_11
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    if-eq v5, v8, :cond_b

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    invoke-interface {v5, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_2

    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_13
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-direct {p0, v6, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_15

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    :cond_15
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->invalidate()V

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v11, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v11, :cond_19

    move v2, v6

    :goto_5
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    if-eq v5, v2, :cond_2

    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v5, :cond_17

    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Refresh mIsFullScreen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    goto/16 :goto_0

    :cond_18
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_4

    :cond_19
    move v2, v7

    goto :goto_5
.end method

.method public onVisibilityChanged(Z)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    goto :goto_0
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initMinimizeView()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105022d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    new-array v5, v8, [I

    aput v1, v5, v6

    aput v1, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMinimizeView : request view is already added >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v4, :cond_5

    :cond_4
    const-string v3, "MultiPhoneWindow"

    const-string v4, "setMinimizeView : view width and height must be WRAP_CONTENT."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    invoke-virtual {p1, v6, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    new-array v5, v8, [I

    aput v2, v5, v6

    aput v0, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected setStackBound(Landroid/graphics/Rect;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateLastRealDisplayFrame()V

    goto :goto_1
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    const/4 v0, 0x1

    return v0
.end method

.method public setSubWindow(Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    return-void
.end method
