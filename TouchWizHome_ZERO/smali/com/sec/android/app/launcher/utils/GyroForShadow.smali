.class public final Lcom/sec/android/app/launcher/utils/GyroForShadow;
.super Ljava/lang/Object;
.source "GyroForShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/utils/GyroForShadow$VectorListener;
    }
.end annotation


# static fields
.field private static DISABLE_INTERRUPT_GYRO:I = 0x0

.field private static ENABLE_INTERRUPT_GYRO:I = 0x0

.field private static INTERRUPT_GYRO_SERVICE:I = 0x0

.field public static final MAX_OFFSET:F = 70.0f

.field private static final SENSOR_TYPE_INTERRUPT_GYROSCOPE:I = 0x1002b

.field private static TAG:Ljava/lang/String;

.field private static mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/launcher/utils/GyroForShadow$VectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mMobileKeyboardScreenHeight:F

.field static mPrevX:F

.field static mPrevY:F

.field private static mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private static mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private static mScreenHeight:F

.field private static mScreenWidth:F

.field static mStartTimestamp:J

.field private static map_x:F

.field private static map_y:F

.field private static sSensorManager:Landroid/hardware/SensorManager;

.field private static final sel:Landroid/hardware/SensorEventListener;

.field private static tilt_x_range:F

.field private static tilt_y_range:F

.field private static wallpaper_x_range:F

.field private static wallpaper_y_range:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const-string v0, "GyroForShadow"

    sput-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mListeners:Ljava/util/Vector;

    sput v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenWidth:F

    sput v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenHeight:F

    sput v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mMobileKeyboardScreenHeight:F

    sput v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->map_x:F

    sput v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->map_y:F

    sput v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_x_range:F

    sput v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_y_range:F

    sput v2, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_x_range:F

    sput v2, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_y_range:F

    const/16 v0, 0x30

    sput v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->INTERRUPT_GYRO_SERVICE:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->ENABLE_INTERRUPT_GYRO:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->DISABLE_INTERRUPT_GYRO:I

    new-instance v0, Lcom/sec/android/app/launcher/utils/GyroForShadow$3;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/utils/GyroForShadow$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    sput v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mPrevX:F

    sput v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mPrevY:F

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mStartTimestamp:J

    new-instance v0, Lcom/sec/android/app/launcher/utils/GyroForShadow$4;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/utils/GyroForShadow$4;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/hardware/SensorEventListener;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$100()Landroid/hardware/SensorManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200()F
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->map_x:F

    return v0
.end method

.method static synthetic access$202(F)F
    .locals 0

    sput p0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->map_x:F

    return p0
.end method

.method static synthetic access$300()F
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_x_range:F

    return v0
.end method

.method static synthetic access$400(FFFFF)F
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/launcher/utils/GyroForShadow;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$500()F
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->map_y:F

    return v0
.end method

.method static synthetic access$502(F)F
    .locals 0

    sput p0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->map_y:F

    return p0
.end method

.method static synthetic access$600()F
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_y_range:F

    return v0
.end method

.method static synthetic access$700()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$800()F
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_x_range:F

    return v0
.end method

.method static synthetic access$900()F
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_y_range:F

    return v0
.end method

.method public static changeTiltXYRange()V
    .locals 12

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->getScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v2

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenWidth:F

    iget v7, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenHeight:F

    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenHeight:F

    float-to-double v8, v7

    const-wide v10, 0x3ff2666666666666L    # 1.15

    mul-double/2addr v8, v10

    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenHeight:F

    float-to-double v10, v7

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    double-to-float v7, v8

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_y_range:F

    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenWidth:F

    float-to-double v8, v7

    const-wide v10, 0x3ff2666666666666L    # 1.15

    mul-double/2addr v8, v10

    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenWidth:F

    float-to-double v10, v7

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    double-to-float v7, v8

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_x_range:F

    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenWidth:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenHeight:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_x_range:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_y_range:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    :cond_0
    sget-object v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->TAG:Ljava/lang/String;

    const-string v8, "GyroForShadow is not initialized"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    const/4 v5, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_3
    if-nez v5, :cond_4

    sget-object v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->TAG:Ljava/lang/String;

    const-string v8, "changeTiltXYRange(), WallpaperManager getDrawable() returned null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/high16 v7, 0x3f000000    # 0.5f

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_x_range:F

    const/high16 v7, 0x3f000000    # 0.5f

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_y_range:F

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x45200000    # 2560.0f

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenHeight:F

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkNobleDevice()Z

    move-result v7

    if-eqz v7, :cond_a

    const v7, 0x44e48000    # 1828.0f

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mMobileKeyboardScreenHeight:F

    :cond_5
    :goto_1
    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenWidth:F

    sget v8, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_x_range:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    if-le v4, v7, :cond_6

    const/high16 v7, 0x3f000000    # 0.5f

    sget v8, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_x_range:F

    mul-float/2addr v7, v8

    int-to-float v8, v4

    sget v9, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenWidth:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_x_range:F

    :cond_6
    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenHeight:F

    sget v8, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_y_range:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    if-le v3, v7, :cond_7

    const/high16 v7, 0x3f000000    # 0.5f

    sget v8, Lcom/sec/android/app/launcher/utils/GyroForShadow;->tilt_y_range:F

    mul-float/2addr v7, v8

    int-to-float v8, v3

    sget v9, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenHeight:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_y_range:F

    :cond_7
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v7

    if-eqz v7, :cond_8

    sget v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_y_range:F

    sget v8, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mMobileKeyboardScreenHeight:F

    sget v9, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mScreenHeight:F

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->wallpaper_y_range:F

    :cond_8
    instance-of v7, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    move-object v1, v5

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_0

    :cond_a
    const/high16 v7, 0x44db0000    # 1752.0f

    sput v7, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mMobileKeyboardScreenHeight:F

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    new-instance v0, Lcom/sec/android/app/launcher/utils/GyroForShadow$1;

    const-string v1, "changeTiltXYRange"

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/utils/GyroForShadow$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/utils/GyroForShadow$1;->start()V

    return-void
.end method

.method private static map(FFFFF)F
    .locals 3

    sub-float v0, p4, p3

    sub-float v1, p0, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method public static pauseSContext()V
    .locals 4

    sget-object v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    sget v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->DISABLE_INTERRUPT_GYRO:I

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    sget-object v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v2, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    sget v3, Lcom/sec/android/app/launcher/utils/GyroForShadow;->INTERRUPT_GYRO_SERVICE:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    :cond_0
    return-void
.end method

.method public static pauseSensor()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/GyroForShadow;->stopSensor()V

    :cond_0
    return-void
.end method

.method public static registerListener(Lcom/sec/android/app/launcher/utils/GyroForShadow$VectorListener;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mPrevY:F

    sput v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mPrevX:F

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/utils/GyroForShadow;->startSensor()V

    return-void
.end method

.method public static resumeSContext()V
    .locals 7

    const/4 v6, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    sget v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->ENABLE_INTERRUPT_GYRO:I

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    sget-object v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v2, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    sget v3, Lcom/sec/android/app/launcher/utils/GyroForShadow;->INTERRUPT_GYRO_SERVICE:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    sput-wide v2, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mStartTimestamp:J

    sput v6, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mPrevX:F

    sput v6, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mPrevY:F

    sput v6, Lcom/sec/android/app/launcher/utils/GyroForShadow;->map_y:F

    sput v6, Lcom/sec/android/app/launcher/utils/GyroForShadow;->map_x:F

    :cond_0
    return-void
.end method

.method public static resumeSensor()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/GyroForShadow;->startSensor()V

    :cond_0
    return-void
.end method

.method public static startSensor()V
    .locals 2

    const v0, 0x1002b

    new-instance v1, Lcom/sec/android/app/launcher/utils/GyroForShadow$2;

    invoke-direct {v1}, Lcom/sec/android/app/launcher/utils/GyroForShadow$2;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/utils/GyroForShadow$2;->start()V

    return-void
.end method

.method public static stopSensor()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/sec/android/app/launcher/utils/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public static unregisterListener(Lcom/sec/android/app/launcher/utils/GyroForShadow$VectorListener;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/utils/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/GyroForShadow;->stopSensor()V

    :cond_0
    return-void
.end method
