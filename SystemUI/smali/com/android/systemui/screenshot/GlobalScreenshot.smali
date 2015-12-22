.class Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ALPHA:F = 0.5f

.field private static DEBUG:Z = false

.field private static final SCREENSHOT_DROP_IN_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_IN_MIN_SCALE:F = 0.725f

.field private static final SCREENSHOT_DROP_OUT_DELAY:I = 0x1f4

.field private static final SCREENSHOT_DROP_OUT_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE:F = 0.45f

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE_OFFSET:F = 0.0f

.field private static final SCREENSHOT_DROP_OUT_SCALE_DURATION:I = 0x172

.field private static final SCREENSHOT_FAST_DROP_OUT_DURATION:I = 0x140

.field private static final SCREENSHOT_FAST_DROP_OUT_MIN_SCALE:F = 0.6f

.field private static final SCREENSHOT_FLASH_TO_PEAK_DURATION:I = 0x82

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final SCREENSHOT_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GlobalScreenshot"

.field private static final is3LMAllowed:Z

.field private static mIsCaptureEffectViewForShutterAndMove:Z


# instance fields
.field private mActivtyMngr:Landroid/app/ActivityManager;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

.field private mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

.field private mCaptureView:Lcom/android/systemui/screenshot/CaptureEffectView;

.field private mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

.field private mCapturedDisplay:I

.field private mCapturedOrigin:I

.field private mContext:Landroid/content/Context;

.field private mDegree:F

.field private mDegrees:F

.field private mDirection:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasCocktailBar:Z

.field private mIsBasedLandscape:Z

.field private mIsCropCapture:Z

.field private mIsDualScreenEnabled:Z

.field private final mLeftToRight:I

.field private mMainScreenBitmap:Landroid/graphics/Bitmap;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnAnimation:Z

.field private final mRightToLeft:I

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotView:Landroid/widget/ImageView;

.field final mShutterEffectLock:Ljava/lang/Object;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSubBackgroundView:Landroid/widget/ImageView;

.field private mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

.field private mSubCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

.field private mSubContext:Landroid/content/Context;

.field private mSubDegrees:F

.field private mSubDisplay:Landroid/view/Display;

.field private mSubDisplayMatrix:Landroid/graphics/Matrix;

.field private mSubDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mSubScreenBitmap:Landroid/graphics/Bitmap;

.field private mSubScreenshotFlash:Landroid/widget/ImageView;

.field private mSubScreenshotLayout:Landroid/view/View;

.field private mSubScreenshotView:Landroid/widget/ImageView;

.field private mSubWindowManager:Landroid/view/WindowManager;

.field private mSweepDirection:I

.field private mTakeMainDisplay:Z

.field private mTakeSubDisplay:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorDuration:J

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    sput-boolean v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibratorDuration:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mLeftToRight:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mRightToLeft:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "capuccino"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "latte"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    const v0, 0x7f04001b

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0e00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0e00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0e0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7df

    const v6, 0x1080500

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const v0, 0x1050006

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->load(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHasCocktailBar:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v8

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v0, v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->getWindowManager(Landroid/content/Context;Lcom/samsung/android/dualscreen/DualScreen;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const v0, 0x7f04001b

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0e00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubBackgroundView:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0e00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0e0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotFlash:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0e00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    const v1, 0x7f0e00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/screenshot/GlobalScreenshot;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    return-object p1
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 8

    const v3, 0x3e9aca6b

    const v2, 0x3f1aca6b

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$9;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$10;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v6, 0x1ae

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$11;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/android/systemui/screenshot/GlobalScreenshot$12;

    invoke-direct {v5, p0, v4, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$12;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 10

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$13;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$13;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-wide/16 v8, 0x140

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$14;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$14;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-object v0

    :cond_1
    const v5, 0x3f5c4771

    new-instance v6, Lcom/android/systemui/screenshot/GlobalScreenshot$15;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$15;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    int-to-float v7, p1

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    int-to-float v7, p2

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/PointF;

    neg-float v7, v3

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    neg-float v8, v2

    const v9, 0x3ee66666    # 0.45f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-direct {v1, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const-wide/16 v8, 0x1ae

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$16;

    invoke-direct {v7, p0, v6, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot$16;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getAnimationMode(I)I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v4, :cond_13

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedOrigin:I

    if-ne v1, v4, :cond_c

    if-nez p1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getAnimationMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const/16 v0, 0xa

    goto :goto_0

    :cond_8
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    const/16 v0, 0xb

    goto :goto_0

    :cond_9
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_a

    const/16 v0, 0xc

    goto :goto_0

    :cond_a
    const/4 v0, 0x6

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_0

    :cond_c
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedOrigin:I

    if-ne v1, v5, :cond_0

    if-nez p1, :cond_f

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_d

    const/16 v0, 0xd

    goto :goto_0

    :cond_d
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v5, :cond_e

    const/4 v0, 0x1

    goto :goto_0

    :cond_e
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v6, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_f
    if-ne p1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_10

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_10
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v5, :cond_11

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_11
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v6, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v5, :cond_14

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_14
    iget v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-ne v1, v6, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method private getCurrentDegree()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_2

    iput-boolean v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    :cond_4
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_5

    iput-boolean v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    goto :goto_0

    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMergedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-string v4, "GlobalScreenshot"

    const-string v5, "leftBitmap and rightBitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    if-nez p1, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    move-object v3, v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, p2, v4, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private isAvailableCapacity()Z
    .locals 14

    const v13, 0x7f0d024b

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_3

    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v2, v0, v4

    sget-boolean v10, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "GlobalScreenshot"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GlobalScreenshot availableSpace = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "GlobalScreenshot"

    const-string v11, "GlobalScreenshot [UBS Enabled Mode]"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v13}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    :goto_0
    return v9

    :catch_0
    move-exception v6

    const-string v10, "ScreenCapture"

    const-string v11, "isAvailableCapacity"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v13}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x2800

    cmp-long v10, v2, v10

    if-gez v10, :cond_2

    const-string v10, "GlobalScreenshot"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GlobalScreenshot available Space = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v10, 0x7f0d047e

    invoke-direct {p0, v10}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const-string v10, "GlobalScreenshot"

    const-string v11, "GlobalScreenshot extStoragePath == null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v13}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    goto :goto_0
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 7

    const v5, 0x7f0d024b

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f02046f

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "err"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v3, 0x315

    invoke-virtual {p1, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private playCaptureSound()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service.camera.running :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "service.camera.running"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service.camera.sfs.running:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "service.camera.sfs.running"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v8, :cond_1

    const-string v3, "service.camera.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "service.camera.sfs.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "GlobalScreenshot"

    const-string v4, "Camera is running!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v3, v7, v8}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "service.camera.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "service.camera.sfs.running"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v2, v8, :cond_2

    const-string v3, "GlobalScreenshot"

    const-string v4, "Camera is running and SFS is off!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v3, v7, v8}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v3, v7, v7}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    goto :goto_0

    :cond_3
    if-ne v1, v8, :cond_0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    iget-wide v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibratorDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActivtyMngr:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActivtyMngr:Landroid/app/ActivityManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mActivtyMngr:Landroid/app/ActivityManager;

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "com.samsung.palmswipetutorial.PalmSwipeActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.samsung.pickuptutorial.PalmSwipeTutorial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getCurrentDegree()V

    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iput-object p2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsBasedLandscape:Z

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->isBasedLandscape:Z

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegree:F

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->degree:F

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    iput-object p1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    if-nez v3, :cond_4

    move v3, v4

    :goto_1
    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->screenCaptureType:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3
    new-instance v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v8, 0x315

    invoke-direct {v3, v6, v0, v7, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V

    new-array v5, v5, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    aput-object v0, v5, v4

    invoke-virtual {v3, v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c030d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startAnimationForShutterAndMoveEffect(Ljava/lang/Runnable;IIZZ)V
    .locals 12

    iget-object v11, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-boolean v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GlobalScreenshot"

    const-string v2, "GlobalScreenshot startAnimationForShutterAndMoveEffect start!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, 0x7d6

    const/16 v4, 0x500

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isEasyOneHandRunning()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v3, 0x8cf

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v1, :cond_b

    or-int/lit16 v4, v4, 0x400

    xor-int/lit16 v4, v4, 0x400

    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_3

    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getAnimationMode(I)I

    move-result v6

    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_3
    const/4 v10, 0x0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_6

    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getAnimationMode(I)I

    move-result v6

    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubContext:Landroid/content/Context;

    invoke-direct {v1, v2, v6}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v10, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :goto_4
    :try_start_6
    new-instance v9, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    invoke-direct {v9, p0, v8, v10, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v1, v9}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v1, v9}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    monitor-exit v11

    return-void

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHasCocktailBar:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_1

    const/16 v3, 0x8ae

    or-int/lit8 v4, v4, 0x8

    goto/16 :goto_0

    :cond_b
    or-int/lit16 v4, v4, 0x400

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    :cond_c
    :try_start_9
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v7

    :try_start_a
    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenshotLayout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    :catchall_2
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v1

    :catch_1
    move-exception v7

    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSubScreenshotLayout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_4
.end method

.method private startAnimationForShutterClickEffect(Ljava/lang/Runnable;IIZZ)V
    .locals 11

    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-boolean v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GlobalScreenshot"

    const-string v2, "GlobalScreenshot startAnimationForShutterClickEffect start!!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v8

    new-instance v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v8}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x7d6

    const/16 v4, 0x500

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isEasyOneHandRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v3, 0x8cf

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v1, :cond_3

    or-int/lit16 v4, v4, 0x400

    xor-int/lit16 v4, v4, 0x400

    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v2, p0, p1, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->setOnCaptureAnimationListener(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    monitor-exit v9

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHasCocktailBar:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    const/16 v3, 0x8ae

    or-int/lit8 v4, v4, 0x8

    goto :goto_0

    :cond_3
    or-int/lit16 v4, v4, 0x400

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_7
    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenshotLayout "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3
.end method


# virtual methods
.method isEasyOneHandRunning()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "any_screen_running"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZIII)V
    .locals 25

    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    if-eqz v3, :cond_0

    const-string v3, "GlobalScreenshot"

    const-string v4, "Capture is not executed while animation is playing."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    :cond_1
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedOrigin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    :cond_2
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v3

    if-nez v3, :cond_b

    :cond_3
    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsDualScreenEnabled:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    :cond_4
    if-eqz v18, :cond_c

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    :cond_5
    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    :goto_3
    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSweepDirection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSweepDirection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCapturedDisplay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCapturedDisplay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", capturedOrigin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTakeMainDisplay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTakeSubDisplay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v3, v12, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_8

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_8
    const/4 v3, 0x2

    new-array v13, v3, [F

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    aput v4, v13, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    aput v4, v13, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    const/16 v19, 0x1

    :goto_5
    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    neg-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v13, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v13, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v13, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v13, v3

    :cond_9
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    aput v4, v21, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    aput v4, v21, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    const/16 v22, 0x1

    :goto_6
    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    neg-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v21, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v21, v3

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "GlobalScreenshot"

    const-string v4, "ScreenCapture is Disabled: Emergencymode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v3, 0x200

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v3

    if-eqz v3, :cond_11

    const v3, 0x1040994

    :goto_7
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_4

    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_6

    :cond_11
    const v3, 0x1040993

    goto :goto_7

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAvailableCapacity()Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCropCapture:Z

    if-eqz v3, :cond_18

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v13, v5

    float-to-int v5, v5

    const/4 v6, 0x1

    aget v6, v13, v6

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    aget v3, v13, v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_15

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    aget v4, v21, v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v5, v21, v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_SUB:I

    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_15

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getMergedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v3, :cond_16

    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScreenBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_19

    :cond_17
    const v3, 0x7f0d047f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->showToast(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_18
    const/4 v3, 0x0

    aget v3, v13, v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    float-to-int v4, v4

    invoke-static {v3, v4}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    :cond_19
    if-nez v19, :cond_1a

    if-eqz v22, :cond_1c

    :cond_1a
    const/16 v24, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    aget v3, v13, v3

    float-to-int v0, v3

    move/from16 v24, v0

    const/4 v3, 0x0

    aget v3, v13, v3

    const/4 v4, 0x0

    aget v4, v21, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v17, v0

    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_22

    :cond_1b
    move/from16 v14, v24

    move/from16 v15, v17

    :goto_a
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-nez v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeSubDisplay:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->rotate(F)V

    :goto_b
    neg-int v3, v14

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    neg-int v4, v15

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v3, :cond_1c

    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotated mScreenBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v3, 0x0

    aget v3, v13, v3

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v13, v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v3, :cond_1d

    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotated mMainScreenBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mMainScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz v22, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDegrees:F

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v3, 0x0

    aget v3, v21, v3

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v21, v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->DEBUG:Z

    if-eqz v3, :cond_1e

    const-string v3, "GlobalScreenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotated mSubScreenBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->prepareToDraw()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    sget-boolean v3, Lcom/android/systemui/screenshot/GlobalScreenshot;->mIsCaptureEffectViewForShutterAndMove:Z

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForShutterAndMoveEffect(Ljava/lang/Runnable;IIZZ)V

    :cond_1f
    :goto_c
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    goto/16 :goto_9

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    goto/16 :goto_9

    :cond_22
    move/from16 v14, v17

    move/from16 v15, v24

    goto/16 :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDegrees:F

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->rotate(F)V

    goto/16 :goto_b

    :cond_24
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForShutterClickEffect(Ljava/lang/Runnable;IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c
.end method
