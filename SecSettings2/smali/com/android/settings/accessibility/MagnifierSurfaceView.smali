.class public Lcom/android/settings/accessibility/MagnifierSurfaceView;
.super Ljava/lang/Object;
.source "MagnifierSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;,
        Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;
    }
.end annotation


# static fields
.field private static mPM:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field initialTouchX:F

.field initialTouchY:F

.field layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

.field layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

.field private mContext:Landroid/content/Context;

.field mCursorX:F

.field mCursorY:F

.field mDeviceWidth:F

.field mDeviceheight:F

.field private mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mImageViewClose:Landroid/widget/ImageView;

.field private mImageViewCloseWidth:I

.field private mImageViewMagnifierPad:Landroid/widget/ImageView;

.field mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

.field private final mMagnifierHandler:Landroid/os/Handler;

.field mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTouchGestureDetector:Landroid/view/GestureDetector;

.field private mWindowManager:Landroid/view/WindowManager;

.field magSize:I

.field xPosition:F

.field yPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchX:F

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchY:F

    iput v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;-><init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Lcom/android/settings/accessibility/MagnifierDisplayPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/MagnifierSurfaceView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnificationSpec(FF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnifierLayoutParams()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateViewLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->handleTimeout()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/MagnifierSurfaceView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->injectAccessibilityMotionEvent(IZ)V

    return-void
.end method

.method private addMagnifierView()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private handleTimeout()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    const-string v2, "magnifier_pref"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0302

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierTouchGestureListener;-><init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;Lcom/android/settings/accessibility/MagnifierSurfaceView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mTouchGestureDetector:Landroid/view/GestureDetector;

    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initializeDisplayInfo()V

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_magnifier_size"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    sput-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPM:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPM:Landroid/os/PowerManager;

    const v2, 0x1000001a

    const-string v3, "Magnifier Window"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initMagnifierUIParams()V
    .locals 13

    const/16 v3, 0x830

    const/16 v12, 0x33

    const/16 v4, 0x8

    const/4 v5, -0x3

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v2, v0, v6

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v1, v0, v6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    iget v8, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method private initializeDisplayInfo()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    new-instance v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "pos_x"

    iget v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    div-float/2addr v3, v4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "pos_y"

    iget v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    div-float/2addr v3, v4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "pos_y"

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0301

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    goto :goto_0
.end method

.method private injectAccessibilityMotionEvent(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView$2;-><init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeMagnifierView()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private saveInSharedPreference()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pos_x"

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pos_y"

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setEventListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateMagnificationSpec(FF)V
    .locals 2

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iput p2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    return-void
.end method

.method private updateMagnifierLayoutParams()V
    .locals 7

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v5, v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v6, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v5, v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    sub-int v5, v2, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private updateViewLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewClose:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public configurationChange()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_magnifier"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    const/4 v7, 0x0

    return v7

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchY:F

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->pokeWakelock()V

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v6, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget v8, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    sub-int v8, v5, v8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget v8, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mImageViewCloseWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v6, v8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateViewLayout()V

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    iput v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    iput v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->saveInSharedPreference()V

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1b58

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    add-float/2addr v7, v9

    iget v9, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchX:F

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    add-float/2addr v7, v9

    iget v9, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initialTouchY:F

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    move v7, v8

    :goto_1
    iput v7, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget v7, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iput v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    :goto_2
    iput v8, v3, Landroid/view/MagnificationSpec;->offsetY:F

    iget v7, v3, Landroid/view/MagnificationSpec;->offsetY:F

    iput v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    invoke-virtual {v7, v3}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v7, v3}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    iget v9, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceWidth:F

    goto :goto_1

    :cond_1
    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->xPosition:F

    goto :goto_1

    :cond_2
    iget v7, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    iget v8, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget v8, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mDeviceheight:F

    goto :goto_2

    :cond_3
    iget v8, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->yPosition:F

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pokeWakelock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->disableMagnifier()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeMagnifierView()V

    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    sput-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    sput-object v1, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPM:Landroid/os/PowerManager;

    return-void
.end method

.method public showView()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagnifierHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->initMagnifierUIParams()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnifierLayoutParams()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->addMagnifierView()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->setEventListener()V

    return-void
.end method

.method public update(II)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v1, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v2, v2, v3

    int-to-float v3, p2

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->enableMagnifier(IIF)V

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v1, v1, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v2, v2, v3

    int-to-float v3, p2

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->updateSettings(IIF)V

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->showMagnifier(FF)V

    iget v0, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnificationSpec(FF)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnifierLayoutParams()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateViewLayout()V

    return-void
.end method
