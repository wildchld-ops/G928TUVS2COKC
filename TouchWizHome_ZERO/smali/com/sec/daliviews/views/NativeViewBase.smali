.class public abstract Lcom/sec/daliviews/views/NativeViewBase;
.super Lcom/sec/daliviews/views/PeerBase;
.source "NativeViewBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/NativeViewBase$1;,
        Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;,
        Lcom/sec/daliviews/views/NativeViewBase$PerformClick;,
        Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;,
        Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;,
        Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;,
        Lcom/sec/daliviews/views/NativeViewBase$Policy;,
        Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;,
        Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;,
        Lcom/sec/daliviews/views/NativeViewBase$DetachListener;,
        Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;,
        Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;,
        Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;,
        Lcom/sec/daliviews/views/NativeViewBase$ScaleAnimationFinishedListener;,
        Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;,
        Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;,
        Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;,
        Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;,
        Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_DEVICE_KEYBOARD:I = 0x1

.field public static final ACCESSIBILITY_DEVICE_POINTER:I = 0x0

.field public static final ACCESSIBILITY_NAV_DOWN:I = 0x3

.field public static final ACCESSIBILITY_NAV_LEFT:I = 0x0

.field public static final ACCESSIBILITY_NAV_RIGHT:I = 0x2

.field public static final ACCESSIBILITY_NAV_UP:I = 0x1

.field static final PFLAG_CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final PFLAG_FOCUSED:I = 0x2

.field private static final PFLAG_PREPRESSED:I = 0x2000000

.field private static final PFLAG_PRESSED:I = 0x4000

.field private static final TAG:Ljava/lang/String;

.field private static gDrawingCacheNullBitmap:Landroid/graphics/Bitmap;

.field private static gFeedback:Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

.field private static mAccessiblityEnabled:Z

.field private static mDetachListener:Lcom/sec/daliviews/views/NativeViewBase$DetachListener;

.field private static mFocusedView:Lcom/sec/daliviews/views/NativeViewBase;

.field private static mTrapViewId:I

.field private static volatile mUniqueViewId:I


# instance fields
.field private mBackground:Lcom/sec/daliviews/views/StatefulDrawable;

.field private mBgColor:I

.field private mBgTint:I

.field protected mChildView:Lcom/sec/daliviews/views/NativeViewBase;

.field private mClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

.field private mClickable:Z

.field private mContentDescription:Ljava/lang/String;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDoPerformClick:Z

.field private mDownPoint:Landroid/graphics/Point;

.field private mDrawingCacheBitmap:Landroid/graphics/Bitmap;

.field private mDrawingCacheEnabled:Z

.field private mDrawingCacheUnsupported:Z

.field private mEnabled:Z

.field private mFocusable:Z

.field private mFocusableInTouchMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackEnabled:Z

.field protected mHasModes:Z

.field private mHasPerformedLongPress:Z

.field private mId:I

.field private mIds:Ljava/lang/String;

.field private mInterestedInAttach:Z

.field private mInterestedInStageEvent:Z

.field private mInternalTag:Ljava/lang/Object;

.field private mIsCheckingForLongPress:Z

.field private mLayoutAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;

.field private mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

.field protected mLocalFlags:I

.field protected mLocalX:F

.field protected mLocalY:F

.field private mLongClickable:Z

.field private mLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

.field protected mModeHasShadows:Z

.field protected mOnScreen:Z

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field protected mParentView:Lcom/sec/daliviews/views/ContainerViewBase;

.field private mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

.field private mPerformClick:Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

.field protected mPrivateFlags:I

.field private mPulseCompleteListener:Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;

.field private mScaleAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleAnimationFinishedListener;

.field private mScaleFadeListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;

.field protected mSensitive:Z

.field protected mSuppressOutlinesOnItems:Z

.field private mTag:Ljava/lang/Object;

.field private mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

.field private mTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

.field private mUnsetPressedState:Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;

.field private mVisibilityChangeListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

.field protected mVisible:I

.field private mWindowAttachCount:I

.field private mZRotateByAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    const-class v0, Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/daliviews/views/NativeViewBase;->mAccessiblityEnabled:Z

    sput-object v1, Lcom/sec/daliviews/views/NativeViewBase;->mFocusedView:Lcom/sec/daliviews/views/NativeViewBase;

    const/high16 v0, 0x7f000000

    sput v0, Lcom/sec/daliviews/views/NativeViewBase;->mUniqueViewId:I

    sput-object v1, Lcom/sec/daliviews/views/NativeViewBase;->mDetachListener:Lcom/sec/daliviews/views/NativeViewBase$DetachListener;

    sput-object v1, Lcom/sec/daliviews/views/NativeViewBase;->gFeedback:Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    const v0, 0x7f000087

    sput v0, Lcom/sec/daliviews/views/NativeViewBase;->mTrapViewId:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/NativeViewBase;->gDrawingCacheNullBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mId:I

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTag:Ljava/lang/Object;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mInternalTag:Ljava/lang/Object;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleAnimationFinishedListener;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisibilityChangeListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mZRotateByAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPulseCompleteListener:Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mOnScreen:Z

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusable:Z

    iput-boolean v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusableInTouchMode:Z

    iput-boolean v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHapticFeedbackEnabled:Z

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mContentDescription:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongClickable:Z

    iput-boolean v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mEnabled:Z

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIsCheckingForLongPress:Z

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInAttach:Z

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInStageEvent:Z

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingLeft:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingTop:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingRight:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingBottom:I

    iput-boolean v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mSensitive:Z

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mModeHasShadows:Z

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mSuppressOutlinesOnItems:Z

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBgColor:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBgTint:I

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBackground:Lcom/sec/daliviews/views/StatefulDrawable;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleFadeListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    iput v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalX:F

    iput v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalY:F

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalFlags:I

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mParentView:Lcom/sec/daliviews/views/ContainerViewBase;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPerformClick:Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDoPerformClick:Z

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mUnsetPressedState:Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDownPoint:Landroid/graphics/Point;

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheEnabled:Z

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheBitmap:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayWidth:I

    iput v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayHeight:I

    iput-boolean v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheUnsupported:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    invoke-direct {v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    sget v1, Lcom/sec/daliviews/views/NativeViewBase;->mUniqueViewId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/sec/daliviews/views/NativeViewBase;->mUniqueViewId:I

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setId(I)V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 32

    invoke-direct/range {p0 .. p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mId:I

    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mTag:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mInternalTag:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleAnimationFinishedListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mVisibilityChangeListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mZRotateByAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPulseCompleteListener:Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mOnScreen:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusable:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusableInTouchMode:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mHapticFeedbackEnabled:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mContentDescription:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mLongClickable:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mEnabled:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mIsCheckingForLongPress:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInAttach:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInStageEvent:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingLeft:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingTop:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingRight:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingBottom:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mSensitive:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mModeHasShadows:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mSuppressOutlinesOnItems:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mBgColor:I

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mBgTint:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mBackground:Lcom/sec/daliviews/views/StatefulDrawable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleFadeListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalX:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalY:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalFlags:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mParentView:Lcom/sec/daliviews/views/ContainerViewBase;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPerformClick:Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mDoPerformClick:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mUnsetPressedState:Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mDownPoint:Landroid/graphics/Point;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheEnabled:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayWidth:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayHeight:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheUnsupported:Z

    sget-object v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v29

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_id:I

    sget v5, Lcom/sec/daliviews/views/NativeViewBase;->mUniqueViewId:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/sec/daliviews/views/NativeViewBase;->mUniqueViewId:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mId:I

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_focusable:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusable:Z

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_focusableInTouchMode:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusableInTouchMode:Z

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_hapticFeedbackEnabled:I

    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mHapticFeedbackEnabled:Z

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_nextFocusDown:I

    const/4 v5, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_nextFocusLeft:I

    const/4 v5, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_nextFocusRight:I

    const/4 v5, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_nextFocusUp:I

    const/4 v5, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_nextFocusForward:I

    const/4 v5, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_contentDescription:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mContentDescription:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_visibility:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v31

    aget v4, v27, v31

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_clickable:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_longClickable:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mLongClickable:Z

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_enabled:I

    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mEnabled:Z

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_interestedInAttach:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInAttach:Z

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInAttach:Z

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_sensitive:I

    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mSensitive:Z

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_padding:I

    const/4 v5, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v28

    const/4 v4, -0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingBottom:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingTop:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingRight:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingLeft:I

    :goto_0
    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_modeHasShadow:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/daliviews/views/NativeViewBase;->mModeHasShadows:Z

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mModeHasShadows:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->inflateBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_longClickPulseEffect:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v30

    if-eqz v30, :cond_0

    new-instance v4, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    sget v5, Lcom/sec/daliviews/R$styleable;->NativeViewBase_longClickPulseEffect_innerColor:I

    const/4 v6, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    sget v5, Lcom/sec/daliviews/R$styleable;->NativeViewBase_longClickPulseEffect_outerColor:I

    const/4 v7, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    sget v5, Lcom/sec/daliviews/R$styleable;->NativeViewBase_longClickPulseEffect_duration:I

    const/4 v8, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    sget v5, Lcom/sec/daliviews/R$styleable;->NativeViewBase_longClickPulseEffect_fadeInDuration:I

    const/4 v9, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    sget v5, Lcom/sec/daliviews/R$styleable;->NativeViewBase_longClickPulseEffect_fadeOutDuration:I

    const/4 v10, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;-><init>(Lcom/sec/daliviews/views/NativeViewBase;IIFFFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    :cond_0
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/daliviews/views/NativeViewBase;->mId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusable:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusableInTouchMode:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/daliviews/views/NativeViewBase;->mLongClickable:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingLeft:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingRight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/views/NativeViewBase;->mEnabled:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/views/NativeViewBase;->mSensitive:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/views/NativeViewBase;->mModeHasShadows:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInAttach:Z

    move/from16 v26, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v26}, Lcom/sec/daliviews/views/NativeViewBase;->initViewParams(JIIZZZZIIIIIIIIIZZZZ)V

    invoke-virtual/range {p0 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->inflateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual/range {p0 .. p2}, Lcom/sec/daliviews/views/NativeViewBase;->inflateViewPolicy(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :cond_1
    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_paddingLeft:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingLeft:I

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_paddingTop:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingTop:I

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_paddingRight:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingRight:I

    sget v4, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_paddingBottom:I

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingBottom:I

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method static synthetic access$1000(Lcom/sec/daliviews/views/NativeViewBase;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->clearPulseEffect(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/daliviews/views/NativeViewBase;IIFFFZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/daliviews/views/NativeViewBase;->pulse(IIFFFZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/daliviews/views/NativeViewBase;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setPulseSpeedFactor(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/daliviews/views/NativeViewBase;)I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mWindowAttachCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/daliviews/views/NativeViewBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$602(Lcom/sec/daliviews/views/NativeViewBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIsCheckingForLongPress:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/daliviews/views/NativeViewBase;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->checkForLongClick(I)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/daliviews/views/NativeViewBase;->mAccessiblityEnabled:Z

    return v0
.end method

.method static synthetic access$900()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusedView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method private native addResizeAnim(JJFFFFI)V
.end method

.method private native animateToColor(JFI)V
.end method

.method private native animateToScale(JFF)V
.end method

.method private native animateZRotateBy(JFF)V
.end method

.method private native buildBackground(JLjava/lang/String;)V
.end method

.method private checkForLongClick(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongClickable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIsCheckingForLongPress:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;-><init>(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    invoke-static {}, Lcom/sec/daliviews/events/NativeEventHitlist;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private native clearPulseEffect(J)V
.end method

.method private native clone(JLcom/sec/daliviews/views/NativeViewBase;)J
.end method

.method public static native configureDancing(FFF)V
.end method

.method private native enterDragMode(JIII)V
.end method

.method private native exitDragMode(J)V
.end method

.method private native fadeBackground(JZF)V
.end method

.method private native findViewById(JI)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native getBackgroundTint(J)I
.end method

.method private static native getDrawingCache(JIILjava/lang/Object;)Z
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private native getHeight(J)I
.end method

.method private native getId(J)I
.end method

.method private native getItemId(J)I
.end method

.method private native getLayoutParams(J)Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;
.end method

.method private getOnClickFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->getFocus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native getOpacity(J)F
.end method

.method private native getParent(J)Lcom/sec/daliviews/views/ContainerViewBase;
.end method

.method private native getPolicy(J)Lcom/sec/daliviews/views/NativeViewBase$Policy;
.end method

.method private native getScreenBoundingRect(J)[I
.end method

.method public static getTouchFeedback()Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/views/NativeViewBase;->gFeedback:Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    return-object v0
.end method

.method private native getWidth(J)I
.end method

.method private native getXPosition(J)F
.end method

.method private native getYPosition(J)F
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private native hideFocusHighlight(J)V
.end method

.method private native hideSelectHighlight(J)V
.end method

.method private inflateBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 6

    sget v1, Lcom/sec/daliviews/R$styleable;->NativeViewBase_android_background:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBgColor:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    iget v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBgColor:I

    invoke-direct {p0, v2, v3, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setBackgroundColor(JI)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/sec/daliviews/views/StatefulDrawable;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Lcom/sec/daliviews/views/StatefulDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBackground:Lcom/sec/daliviews/views/StatefulDrawable;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBackground:Lcom/sec/daliviews/views/StatefulDrawable;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/StatefulDrawable;->createPeer()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setBackgroundDrawable(JJ)V

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, p1, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setBackground(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private native initViewParams(JIIZZZZIIIIIIIIIZZZZ)V
.end method

.method private native isClickable(J)Z
.end method

.method private native isEnabled(J)Z
.end method

.method public static isTrapId(I)Z
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/sec/daliviews/views/NativeViewBase;->mTrapViewId:I

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static logPrintDebugStackTrace(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method private longPressThreshold(FFFF)Z
    .locals 5

    sub-float v2, p3, p1

    sub-float v3, p3, p1

    mul-float/2addr v2, v3

    sub-float v3, p4, p2

    sub-float v4, p4, p2

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    invoke-static {}, Lcom/sec/daliviews/events/NativeEventHitlist;->getLongPressSensitivity()I

    move-result v1

    mul-int v2, v1, v1

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private native matchSize(JJ)V
.end method

.method private native navigateFocus(JIZ)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native onDoubleTap(JFF)V
.end method

.method private native onDoubleTapEvent(JFF)V
.end method

.method private native onDown(JFF)V
.end method

.method private native onFling(JFF)V
.end method

.method private native onLongPress(JFF)V
.end method

.method private native onScale(JFFF)V
.end method

.method private native onScaleBegin(JFFF)V
.end method

.method private native onScaleEnd(JFFF)V
.end method

.method private native onScroll(JFF)V
.end method

.method private native onShowPress(JFF)V
.end method

.method private native onSingleTapConfirmed(JFF)V
.end method

.method private native onSingleTapUp(JFF)V
.end method

.method private native onUp(JFF)V
.end method

.method private pulse(IIFFFZZ)V
    .locals 11

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/sec/daliviews/views/NativeViewBase;->pulse(JIIFFFZZ)V

    return-void
.end method

.method private native pulse(JIIFFFZZ)V
.end method

.method private removeLongPressCallback()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIsCheckingForLongPress:Z

    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeTouchDownPusleEffect(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->resetFocus(Z)V

    :cond_0
    return-void
.end method

.method private requestFocusNoSearch(ILandroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusableInTouchMode:Z

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native requestLayoutAnimationCallback(JZ)V
.end method

.method private native requestScaleAnimationCallback(JZ)V
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisibilityChangeListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mOnScreen:Z

    return-void
.end method

.method private native selectFocus(J)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native selectFocus(JJIFFI)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native selectFocusLast(J)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method public static setAccessiblityEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/daliviews/views/NativeViewBase;->mAccessiblityEnabled:Z

    return-void
.end method

.method private native setBackground(JLjava/lang/String;)V
.end method

.method private setBackground(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private native setBackgroundColor(JI)V
.end method

.method private native setBackgroundDrawable(JJ)V
.end method

.method private native setBackgroundImage(JLandroid/graphics/Bitmap;)V
.end method

.method private native setBackgroundTint(JI)V
.end method

.method private native setCanAcceptDrop(JZ)V
.end method

.method private native setClickable(JZ)V
.end method

.method private native setCurrentOrientation(JI)V
.end method

.method private native setDefaultBlendMode(J)V
.end method

.method private native setDefaultBlendModeInheritedly(J)V
.end method

.method private native setDragEventInterest(JI)V
.end method

.method private static native setDrawingCacheEnabled(JZ)J
.end method

.method private native setEnabled(JZ)V
.end method

.method private native setEventTransformToLocal(JZ)V
.end method

.method private native setFocusable(JZ)V
.end method

.method private native setFocusableInTouchMode(JZ)V
.end method

.method public static setFocusedView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    sput-object p0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusedView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method

.method private native setHasModes(JZ)V
.end method

.method private native setId(JI)V
.end method

.method private native setInterestedInAttach(JZ)V
.end method

.method private native setInterestedInStageEvent(JZ)V
.end method

.method private native setLayoutParams(JJ)V
.end method

.method private native setLongClickable(JZ)V
.end method

.method private native setNextFocusDownId(JI)V
.end method

.method private native setNextFocusForwardId(JI)V
.end method

.method private native setNextFocusLeftId(JI)V
.end method

.method private native setNextFocusRightId(JI)V
.end method

.method private native setNextFocusUpId(JI)V
.end method

.method private native setNinePatchBackground(JLandroid/graphics/Bitmap;IIII)V
.end method

.method private native setOpacity(JF)V
.end method

.method private native setOpacityAnimated(JFF)V
.end method

.method private native setPadding(JIIII)V
.end method

.method private native setPaddingBottom(JI)V
.end method

.method private native setPaddingLeft(JI)V
.end method

.method private native setPaddingRight(JI)V
.end method

.method private native setPaddingTop(JI)V
.end method

.method private native setPolicy(JJ)V
.end method

.method private native setPosAndSize(JIIII)V
.end method

.method private native setPosition(JFFFZ)V
.end method

.method private setPulseSpeedFactor(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setPulseSpeedFactor(JF)V

    return-void
.end method

.method private native setPulseSpeedFactor(JF)V
.end method

.method private native setScale(JFF)V
.end method

.method private native setScalePosAndSize(JFFIIII)V
.end method

.method private native setSensitive(JZ)V
.end method

.method private native setShadowVisible(JZ)V
.end method

.method private native setSize(JII)V
.end method

.method public static setTouchFeedback(Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;)V
    .locals 0

    sput-object p0, Lcom/sec/daliviews/views/NativeViewBase;->gFeedback:Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    return-void
.end method

.method public static setTrapId(I)I
    .locals 0

    sput p0, Lcom/sec/daliviews/views/NativeViewBase;->mTrapViewId:I

    return p0
.end method

.method private native setVisibility(JI)V
.end method

.method private native setVisibilityAnimated(JIF)V
.end method

.method private native setVisibilityScaleAnimated(JIFFFZ)V
.end method

.method private native setXPosition(JF)V
.end method

.method private native setXRotation(JF)V
.end method

.method private native setYPosition(JF)V
.end method

.method private native setYRotation(JF)V
.end method

.method private native setZRotation(JF)V
.end method

.method private native showFocusHighlight(JJ)V
.end method

.method private native showSelectHighlight(JJ)V
.end method

.method private native stopAllAnim(J)V
.end method

.method private tapThreshold(FFFF)Z
    .locals 5

    sub-float v2, p3, p1

    sub-float v3, p3, p1

    mul-float/2addr v2, v3

    sub-float v3, p4, p2

    sub-float v4, p4, p2

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    invoke-static {}, Lcom/sec/daliviews/events/NativeEventHitlist;->getTapSensitivity()I

    move-result v1

    mul-int v2, v1, v1

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private native unparentAndDestroy(J)V
.end method

.method private native useOwnColor(JZ)V
.end method


# virtual methods
.method public addResizeAnim(Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;FFFFI)V
    .locals 11

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/sec/daliviews/views/NativeViewBase;->addResizeAnim(JJFFFFI)V

    return-void
.end method

.method public animateToColor(FI)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->animateToColor(JFI)V

    return-void
.end method

.method public animateToScale(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->animateToScale(JFF)V

    return-void
.end method

.method public animateZRotateBy(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->animateZRotateBy(JFF)V

    return-void
.end method

.method public buildBackground(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->buildBackground(JLjava/lang/String;)V

    return-void
.end method

.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->canAcceptDrop(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    return v0
.end method

.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {v2}, Lcom/sec/daliviews/views/NativeViewBase;->reset()V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v2}, Lcom/sec/daliviews/views/NativeViewBase;->clone(JLcom/sec/daliviews/views/NativeViewBase;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/CloneNotSupportedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "native clone fail. javaPeer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v2, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setPeer(J)V

    invoke-static {v2}, Lcom/sec/daliviews/views/NativeApp;->registerPeerObject(Lcom/sec/daliviews/views/PeerBase;)V

    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->destroy()V

    return-void
.end method

.method public detachComplete()V
    .locals 1

    sget-object v0, Lcom/sec/daliviews/views/NativeViewBase;->mDetachListener:Lcom/sec/daliviews/views/NativeViewBase$DetachListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/views/NativeViewBase;->mDetachListener:Lcom/sec/daliviews/views/NativeViewBase$DetachListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/NativeViewBase$DetachListener;->onDetachComplete()V

    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    invoke-interface {v1, p1}, Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doesIntersectPoint(Landroid/graphics/Point;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enterDragMode()V
    .locals 1

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->enterDragMode(I)V

    return-void
.end method

.method public enterDragMode(I)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v5, v4

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/NativeViewBase;->enterDragMode(JIII)V

    return-void
.end method

.method public eventDataDebug()V
    .locals 3

    sget-object v0, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", localx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->eventDataDebug()V

    :cond_0
    return-void
.end method

.method public exitDragMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->exitDragMode(J)V

    return-void
.end method

.method public fadeBackground(ZF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->fadeBackground(JZF)V

    return-void
.end method

.method public findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->findViewById(JI)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackgroundTint()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBgTint:I

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-object v7

    :cond_0
    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheUnsupported:Z

    if-eqz v0, :cond_1

    sget-object v7, Lcom/sec/daliviews/views/NativeViewBase;->gDrawingCacheNullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayWidth:I

    iget v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheBitmap:Landroid/graphics/Bitmap;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayWidth:I

    iget v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayHeight:I

    iget-object v6, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v4, v6}, Lcom/sec/daliviews/views/NativeViewBase;->getDrawingCache(JIILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    const-string v1, "getDrawingCache() return null********"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayWidth:I

    iget v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayHeight:I

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method public getEventChild()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    return-object v0
.end method

.method public getEventDebugString(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEventParent()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mParentView:Lcom/sec/daliviews/views/ContainerViewBase;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->getHeight(J)I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mId:I

    return v0
.end method

.method public getIds()Ljava/lang/String;
    .locals 7

    const-string v4, ""

    iget-object v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\.@]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIds:Ljava/lang/String;

    return-object v4
.end method

.method public getItemId()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->getItemId(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    const-string v1, "DALI check : onTouch No target found."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->clone()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/sec/daliviews/views/Item;

    if-eqz v5, :cond_0

    move-object v1, v4

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isFocusable()Z

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isFocused()Z

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isClickable()Z

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isEnabled()Z

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p3, p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :cond_3
    return-void

    :cond_4
    sget-object v5, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    const-string v6, "getNodeInfo() ScreenBoundingRect is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getOpacity()F
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->getOpacity(J)F

    move-result v0

    return v0
.end method

.method public getParentView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->getParent(J)Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosition()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;
    .locals 4

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    # getter for: Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosX:F
    invoke-static {v1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->access$000(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    # getter for: Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosY:F
    invoke-static {v2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->access$100(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    # getter for: Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosZ:F
    invoke-static {v3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->access$200(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    return-object v0
.end method

.method protected getResizeMode(I)I
    .locals 4

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Item;->getResizeMode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenBoundingRect()Landroid/graphics/Rect;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->getScreenBoundingRect(J)[I

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v5

    aget v3, v0, v6

    const/4 v4, 0x2

    aget v4, v0, v4

    aget v5, v0, v5

    add-int/2addr v4, v5

    const/4 v5, 0x3

    aget v5, v0, v5

    aget v6, v0, v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getViewPolicy()Lcom/sec/daliviews/views/NativeViewBase$Policy;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->getPolicy(J)Lcom/sec/daliviews/views/NativeViewBase$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->getWidth(J)I

    move-result v0

    return v0
.end method

.method public getXPosition()F
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->getXPosition(J)F

    move-result v0

    return v0
.end method

.method public getYPosition()F
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->getYPosition(J)F

    move-result v0

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    :cond_0
    return-void
.end method

.method public hasModes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHasModes:Z

    return v0
.end method

.method protected hasPerfomedLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHasPerformedLongPress:Z

    return v0
.end method

.method public hideFocusHighlight()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->hideFocusHighlight(J)V

    :cond_0
    return-void
.end method

.method public hideSelectHighlight()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->hideSelectHighlight(J)V

    :cond_0
    return-void
.end method

.method protected inflateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    return-void
.end method

.method protected inflateViewPolicy(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Lcom/sec/daliviews/views/NativeViewBase$Policy;

    invoke-direct {v0, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase$Policy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setViewPolicy(Lcom/sec/daliviews/views/NativeViewBase$Policy;)V

    return-void
.end method

.method protected isCheckingForLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mIsCheckingForLongPress:Z

    return v0
.end method

.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    return v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusable:Z

    return v0
.end method

.method public isFocusableInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusableInTouchMode:Z

    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getEventParent()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/daliviews/views/ContainerViewBase;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->getEventParent()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isInTouchMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnScreen()Z
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 2

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecyclable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public matchSize(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->matchSize(JJ)V

    :cond_0
    return-void
.end method

.method public navigateFocus(IZ)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    sget-object v1, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigateFocus entry, direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->navigateFocus(JIZ)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    sget-object v1, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigateFocus return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAttachedToStage()V
    .locals 0

    return-void
.end method

.method public onClick()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getItemId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->onItemClick(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromStage()V
    .locals 0

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->onDoubleTap(JFF)V

    return-void
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->onDoubleTapEvent(JFF)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->onDown(JFF)V

    return-void
.end method

.method public onDragEnd()V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public onDragExit(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public onDrop(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->drop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/sec/daliviews/views/NativeViewBase;->onFling(JFF)V

    return-void
.end method

.method protected onItemClick(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemLinked(J)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    sget-object v1, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemLinked(), invalid ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/Item;->onViewLinked(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void

    :cond_1
    sget-object v1, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemLinked(), item not found with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1
.end method

.method protected onItemLongPress(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onItemTouch(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemUnlinked(J)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    sget-object v1, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemUnlinked(), invalid ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/Item;->onViewUnlinked(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void

    :cond_1
    sget-object v1, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemUnlinked(), item not found with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1
.end method

.method protected onLayoutAnimationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;

    invoke-interface {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;->onLayoutAnimationFinished(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->onLongPress(JFF)V

    return-void
.end method

.method protected onLongPressEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getItemId()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    invoke-virtual {v1, p0, v0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->onItemLongPress(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    return v2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onPulseComplete()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->setAnimationFinish()V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isPressed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->removeTouchDownPusleEffect(Z)V

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPulseCompleteListener:Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPulseCompleteListener:Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;->onPulseComplete()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDoPerformClick:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPerformClick:Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase$PerformClick;-><init>(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPerformClick:Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    :cond_1
    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPerformClick:Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->performClick()Z

    :cond_2
    iput-boolean v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDoPerformClick:Z

    :cond_3
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/NativeViewBase;->onScale(JFFF)V

    return-void
.end method

.method protected onScaleAnimationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleAnimationFinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleAnimationFinishedListener;

    invoke-interface {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase$ScaleAnimationFinishedListener;->onScaleAnimationFinished(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/NativeViewBase;->onScaleBegin(JFFF)V

    return-void
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/NativeViewBase;->onScaleEnd(JFFF)V

    return-void
.end method

.method protected onScaleFadeInAnimationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleFadeListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleFadeListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;->onScaleFadeInCompleted()V

    :cond_0
    return-void
.end method

.method protected onScaleFadeOutAnimationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleFadeListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleFadeListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;

    invoke-interface {v0}, Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;->onScaleFadeOutCompleted()V

    :cond_0
    return-void
.end method

.method protected onScreenChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mOnScreen:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/sec/daliviews/views/NativeViewBase;->onScroll(JFF)V

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->onShowPress(JFF)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->onSingleTapConfirmed(JFF)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->onSingleTapUp(JFF)V

    return-void
.end method

.method protected onSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getEventParent()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getItemId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    invoke-virtual {v1, p0, v0, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->onItemTouch(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/high16 v10, 0x2000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->onTouch(Landroid/view/MotionEvent;)Z

    iget-boolean v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mEnabled:Z

    if-nez v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_0

    iget v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_0

    invoke-virtual {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setPressed(Z)V

    :cond_0
    iget-boolean v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongClickable:Z

    if-eqz v7, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    invoke-virtual {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setPressed(Z)V

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeTapCallback()V

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeLongPressCallback()V

    goto :goto_0

    :cond_4
    iget-boolean v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongClickable:Z

    if-eqz v7, :cond_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_6
    :goto_1
    move v5, v6

    goto :goto_0

    :pswitch_0
    iget v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_e

    move v4, v6

    :goto_2
    iget v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    and-int/lit16 v7, v7, 0x4000

    if-nez v7, :cond_7

    if-eqz v4, :cond_d

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isFocusableInTouchMode()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isFocused()Z

    move-result v7

    if-nez v7, :cond_8

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {p0, v6}, Lcom/sec/daliviews/views/NativeViewBase;->setPressed(Z)V

    :cond_9
    iget-boolean v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHasPerformedLongPress:Z

    if-nez v7, :cond_a

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeLongPressCallback()V

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getOnClickFocus()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->getAnimatioinFinish()Z

    move-result v7

    if-nez v7, :cond_f

    iput-boolean v6, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDoPerformClick:Z

    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v7, v8}, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->setPulseSpeedFactor(F)V

    :cond_a
    :goto_3
    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mUnsetPressedState:Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;

    if-nez v7, :cond_b

    new-instance v7, Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;

    invoke-direct {v7, p0}, Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;-><init>(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mUnsetPressedState:Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;

    :cond_b
    if-eqz v4, :cond_11

    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mUnsetPressedState:Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;

    invoke-static {}, Lcom/sec/daliviews/events/NativeEventHitlist;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/daliviews/views/NativeViewBase;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_4
    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeTapCallback()V

    :cond_d
    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->getAnimatioinFinish()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->removeTouchDownPusleEffect(Z)V

    goto :goto_1

    :cond_e
    move v4, v5

    goto :goto_2

    :cond_f
    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPerformClick:Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    if-nez v7, :cond_10

    new-instance v7, Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    invoke-direct {v7, p0}, Lcom/sec/daliviews/views/NativeViewBase$PerformClick;-><init>(Lcom/sec/daliviews/views/NativeViewBase;)V

    iput-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPerformClick:Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    :cond_10
    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPerformClick:Lcom/sec/daliviews/views/NativeViewBase$PerformClick;

    invoke-virtual {p0, v7}, Lcom/sec/daliviews/views/NativeViewBase;->post(Ljava/lang/Runnable;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->performClick()Z

    goto :goto_3

    :cond_11
    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mUnsetPressedState:Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;

    invoke-virtual {p0, v7}, Lcom/sec/daliviews/views/NativeViewBase;->post(Ljava/lang/Runnable;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mUnsetPressedState:Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;->run()V

    goto :goto_4

    :pswitch_1
    iput-boolean v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHasPerformedLongPress:Z

    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Point;->set(II)V

    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->performPulse()V

    :cond_12
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isInScrollingContainer()Z

    move-result v3

    if-eqz v3, :cond_14

    iget v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    or-int/2addr v5, v10

    iput v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    iget-object v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    if-nez v5, :cond_13

    new-instance v5, Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;-><init>(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase$1;)V

    iput-object v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    :cond_13
    iget-object v5, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    invoke-static {}, Lcom/sec/daliviews/events/NativeEventHitlist;->getTapTimeout()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {p0, v5, v8, v9}, Lcom/sec/daliviews/views/NativeViewBase;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p0, v6}, Lcom/sec/daliviews/views/NativeViewBase;->setPressed(Z)V

    invoke-direct {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->checkForLongClick(I)V

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v7

    if-ne v7, v6, :cond_15

    sget-object v7, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " :Cancel the drag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    :cond_15
    invoke-virtual {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setPressed(Z)V

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeTapCallback()V

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeLongPressCallback()V

    invoke-direct {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->removeTouchDownPusleEffect(Z)V

    goto/16 :goto_1

    :pswitch_3
    iget v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_16

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeTapCallback()V

    iget v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_16

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeLongPressCallback()V

    invoke-virtual {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setPressed(Z)V

    :cond_16
    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDownPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDownPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/sec/daliviews/views/NativeViewBase;->longPressThreshold(FFFF)Z

    move-result v7

    if-nez v7, :cond_17

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeLongPressCallback()V

    invoke-direct {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->removeTouchDownPusleEffect(Z)V

    :cond_17
    iget-object v7, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDownPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDownPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/sec/daliviews/views/NativeViewBase;->tapThreshold(FFFF)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->removeTouchDownPusleEffect(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/daliviews/views/NativeViewBase;->setPressed(Z)V

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->removeTapCallback()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->onUp(JFF)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 0

    return-void
.end method

.method protected onViewDetached()V
    .locals 0

    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 1

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisibilityChangeListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisibilityChangeListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;->onVisibilityChange(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public onZRotateByAnimationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mZRotateByAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mZRotateByAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;

    invoke-interface {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;->onZRotateByAnimationFinishedListener(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    invoke-interface {v1, p0}, Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;->onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->onClick()Z

    move-result v0

    :cond_1
    sget-object v1, Lcom/sec/daliviews/views/NativeViewBase;->gFeedback:Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/sec/daliviews/views/NativeViewBase;->gFeedback:Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;->playSoundEffect(I)V

    :cond_2
    return v0
.end method

.method public performLongClick()Z
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v2

    iget-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v2

    move-wide v2, v0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    invoke-interface {v0, p0, v9}, Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;->onLongPress(Lcom/sec/daliviews/views/NativeViewBase;Landroid/view/MotionEvent;)Z

    move-result v8

    :cond_0
    if-nez v8, :cond_1

    invoke-virtual {p0, v9}, Lcom/sec/daliviews/views/NativeViewBase;->onLongPressEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHasPerformedLongPress:Z

    :cond_1
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    sget-object v0, Lcom/sec/daliviews/views/NativeViewBase;->gFeedback:Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/daliviews/views/NativeViewBase;->gFeedback:Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;

    invoke-interface {v0, v4}, Lcom/sec/daliviews/views/NativeViewBase$TouchFeedback;->performHapticFeedback(I)V

    :cond_2
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    return v8
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method public pulse(IIFFF)V
    .locals 8

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/sec/daliviews/views/NativeViewBase;->pulse(IIFFFZZ)V

    return-void
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->notifyDestroy()V

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisibilityChangeListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final requestFocus()Z
    .locals 1

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/NativeViewBase;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->requestFocusNoSearch(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected resetPeer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForTap:Lcom/sec/daliviews/views/NativeViewBase$CheckForTap;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPendingCheckForLongPress:Lcom/sec/daliviews/views/NativeViewBase$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->resetPeer()V

    return-void
.end method

.method public selectFocus()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    const-string v1, "NativeViewBase"

    const-string v2, "selectFocus entry - keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->selectFocus(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    const-string v1, "NativeViewBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectFocus return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public selectFocus(JIFFI)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 11

    const-string v1, "NativeViewBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectFocus entry, type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/sec/daliviews/utils/MotionEventDump;->ActionEventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/views/NativeViewBase;->selectFocus(JJIFFI)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    const-string v1, "NativeViewBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectFocus return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public selectFocusPeer(J)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 5

    const-string v1, "NativeViewBase"

    const-string v2, "selectFocus entry - keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->selectFocus(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    const-string v1, "NativeViewBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectFocus return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public selectFocusPeerLast(J)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 5

    const-string v1, "NativeViewBase"

    const-string v2, "selectFocus entry - keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->selectFocusLast(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    const-string v1, "NativeViewBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectFocus return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setBackgroundImage(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-static {p1, v6}, Lcom/sec/daliviews/utils/BitmapUtils;->decodeNinePatch(Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget v4, v6, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/NativeViewBase;->setNinePatchBackground(Landroid/graphics/Bitmap;IIII)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/daliviews/utils/BitmapUtils;->convertToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/NativeViewBase;->setBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setBackground(Lcom/sec/daliviews/views/StatefulDrawable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/StatefulDrawable;->createPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setBackgroundDrawable(JJ)V

    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setBackground(JLjava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBgColor:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setBackgroundColor(JI)V

    return-void
.end method

.method public setBackgroundTint(I)V
    .locals 3

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBgTint:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    iget v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mBgTint:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setBackgroundTint(JI)V

    return-void
.end method

.method public setCanAcceptDrop(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setCanAcceptDrop(JZ)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setClickable(JZ)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mContentDescription:Ljava/lang/String;

    return-void
.end method

.method public setCurrentOrientation(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setCurrentOrientation(JI)V

    return-void
.end method

.method public setDefaultBlendMode()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setDefaultBlendMode(J)V

    return-void
.end method

.method public setDefaultBlendModeInheritedly()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setDefaultBlendModeInheritedly(J)V

    return-void
.end method

.method public setDetachListener(Lcom/sec/daliviews/views/NativeViewBase$DetachListener;)V
    .locals 0

    sput-object p1, Lcom/sec/daliviews/views/NativeViewBase;->mDetachListener:Lcom/sec/daliviews/views/NativeViewBase$DetachListener;

    return-void
.end method

.method public setDragEventInterest(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setDragEventInterest(JI)V

    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheEnabled:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    const-string v3, "setDrawingCacheEnabled() failed as native view is not available. Advised to check lifecycle)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheEnabled:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setDrawingCacheEnabled(JZ)J

    move-result-wide v0

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    const-string v3, "setDrawingCacheEnabled() failed ( check if support is compiled in )"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheUnsupported:Z

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheUnsupported:Z

    if-nez p1, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDrawingCacheBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayWidth:I

    and-long v2, v0, v6

    long-to-int v2, v2

    iput v2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayHeight:I

    sget-object v2, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDrawingCacheEnabled(), screen size("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mEnabled:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setEnabled(JZ)V

    :cond_0
    return-void
.end method

.method public setEventChild(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/sec/daliviews/views/ContainerViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    check-cast p0, Lcom/sec/daliviews/views/ContainerViewBase;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase;->setEventParent(Lcom/sec/daliviews/views/ContainerViewBase;)V

    :cond_0
    return-void
.end method

.method public setEventData(FFI)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalX:F

    iput p2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalY:F

    iput p3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLocalFlags:I

    return-void
.end method

.method public setEventParent(Lcom/sec/daliviews/views/ContainerViewBase;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mChildView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mParentView:Lcom/sec/daliviews/views/ContainerViewBase;

    return-void
.end method

.method public setEventTransformToLocal(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setEventTransformToLocal(JZ)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusable:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setFocusable(JZ)V

    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mFocusableInTouchMode:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setFocusableInTouchMode(JZ)V

    return-void
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHapticFeedbackEnabled:Z

    return-void
.end method

.method public setHasModes(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mHasModes:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setHasModes(JZ)V

    return-void
.end method

.method public setId(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mId:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setId(JI)V

    return-void
.end method

.method public setInterestedInAttach(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInAttach:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInAttach:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setInterestedInAttach(JZ)V

    :cond_0
    return-void
.end method

.method public setInterestedInStageEvent(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInStageEvent:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mInterestedInStageEvent:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setInterestedInStageEvent(JZ)V

    :cond_0
    return-void
.end method

.method public setLayoutAnimationFinishedListener(Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->requestLayoutAnimationCallback(JZ)V

    :goto_0
    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$LayoutAnimationFinishedListener;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->requestLayoutAnimationCallback(JZ)V

    goto :goto_0
.end method

.method public setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->createPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setLayoutParams(JJ)V

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongClickable:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setLongClickable(JZ)V

    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setNextFocusDownId(JI)V

    return-void
.end method

.method public setNextFocusForwardId(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setNextFocusForwardId(JI)V

    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setNextFocusLeftId(JI)V

    return-void
.end method

.method public setNextFocusRightId(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setNextFocusRightId(JI)V

    return-void
.end method

.method public setNextFocusUpId(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setNextFocusUpId(JI)V

    return-void
.end method

.method public setNinePatchBackground(Landroid/graphics/Bitmap;IIII)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/views/NativeViewBase;->setNinePatchBackground(JLandroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public setOnClickListener(Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickListener:Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;

    return-void
.end method

.method public setOnLongPressListener(Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongPressListener:Lcom/sec/daliviews/views/NativeViewBase$OnLongPressListener;

    return-void
.end method

.method public setOnTouchListener(Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchListener:Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setOpacity(JF)V

    return-void
.end method

.method public setOpacityAnimated(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->setOpacityAnimated(JFF)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 8

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingLeft:I

    iput p3, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingRight:I

    iput p2, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingTop:I

    iput p4, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingBottom:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/NativeViewBase;->setPadding(JIIII)V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingBottom:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setPaddingBottom(JI)V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setPaddingLeft(JI)V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingRight:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setPaddingRight(JI)V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 2

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setPaddingTop(JI)V

    return-void
.end method

.method public setPosAndSize(IIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/NativeViewBase;->setPosAndSize(JIIII)V

    return-void
.end method

.method public setPosition(FFFZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    # setter for: Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosX:F
    invoke-static {v0, p1}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->access$002(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;F)F

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    # setter for: Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosY:F
    invoke-static {v0, p2}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->access$102(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;F)F

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLayoutParam:Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    # setter for: Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->mPosZ:F
    invoke-static {v0, p3}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;->access$202(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;F)F

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/NativeViewBase;->setPosition(JFFFZ)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/NativeViewBase;->dispatchSetPressed(Z)V

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setPulseAttr(IIFFF)V
    .locals 6

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTouchDownPulseEffectAttr:Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/views/NativeViewBase$PulseEffectAttr;->setPluseEffectAttr(IIFFF)V

    :cond_0
    return-void
.end method

.method public setPulseCompleteListener(Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mPulseCompleteListener:Lcom/sec/daliviews/views/NativeViewBase$PulseCompleteListener;

    return-void
.end method

.method public setScale(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->setScale(JFF)V

    :cond_0
    return-void
.end method

.method public setScaleAnimationFinishedListener(Lcom/sec/daliviews/views/NativeViewBase$ScaleAnimationFinishedListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lcom/sec/daliviews/views/NativeViewBase;->requestScaleAnimationCallback(JZ)V

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleAnimationFinishedListener;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScaleFadeAnimationListener(Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mScaleFadeListener:Lcom/sec/daliviews/views/NativeViewBase$ScaleFadeAnimationListener;

    return-void
.end method

.method public setScalePosAndSize(FFIIII)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/views/NativeViewBase;->setScalePosAndSize(JFFIIII)V

    return-void
.end method

.method public setSensitive(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mSensitive:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setSensitive(JZ)V

    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setShadowVisible(JZ)V

    return-void
.end method

.method public setSize(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->setSize(JII)V

    return-void
.end method

.method public setSuppressOutlinesOnItems(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mSuppressOutlinesOnItems:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public setViewPolicy(Lcom/sec/daliviews/views/NativeViewBase$Policy;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase$Policy;->createPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setPolicy(JJ)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    iget v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisible:I

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(JI)V

    :cond_0
    return-void
.end method

.method public setVisibilityAnimated(IF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibilityAnimated(JIF)V

    return-void
.end method

.method public setVisibilityChangeListener(Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mVisibilityChangeListener:Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;

    return-void
.end method

.method public setVisibilityScaleAnimated(IFFFZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibilityScaleAnimated(JIFFFZ)V

    return-void
.end method

.method public setXPosition(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setXPosition(JF)V

    return-void
.end method

.method public setXRotation(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setXRotation(JF)V

    return-void
.end method

.method public setYPosition(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setYPosition(JF)V

    return-void
.end method

.method public setZRotateByAnimationFinishedListener(Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mZRotateByAnimationFinishedListener:Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;

    return-void
.end method

.method public setZRotation(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->setZRotation(JF)V

    return-void
.end method

.method public showFocusHighlight(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->showFocusHighlight(JJ)V

    :cond_0
    return-void
.end method

.method public showSelectHighlight(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->showSelectHighlight(JJ)V

    :cond_0
    return-void
.end method

.method public stopAllAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->stopAllAnim(J)V

    return-void
.end method

.method public suppressOutlinesOnItems()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/views/NativeViewBase;->mSuppressOutlinesOnItems:Z

    return v0
.end method

.method public unparentAndDestroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/daliviews/views/NativeViewBase;->setPeer(J)V

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->unparentAndDestroy(J)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/sec/daliviews/views/NativeViewBase;->TAG:Ljava/lang/String;

    const-string v3, "unparentAndDestroy : not found valid peer."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mClickable:Z

    return-void
.end method

.method public updateLongClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/views/NativeViewBase;->mLongClickable:Z

    return-void
.end method

.method public useOwnColor(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/NativeViewBase;->useOwnColor(JZ)V

    return-void
.end method
