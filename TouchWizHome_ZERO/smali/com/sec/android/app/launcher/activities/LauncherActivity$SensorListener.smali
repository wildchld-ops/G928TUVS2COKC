.class Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# static fields
.field private static final RADIANS_TO_DEGREES:F = 57.29578f


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;Lcom/sec/android/app/launcher/activities/LauncherActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v2, v4, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v3, v4, v5

    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSideTouchEnabled:Z
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1600(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    div-float v5, v3, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngle:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget v4, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngle:I

    const/16 v5, 0x3c

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    neg-float v5, v1

    float-to-double v6, v5

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    neg-double v6, v6

    const-wide v8, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->orientationAngle:I

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mParallaxEffectEnabled:Z
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1700(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    div-float v5, v1, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngleX:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    div-float v5, v2, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngleY:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    div-float v5, v3, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngleZ:I

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget v5, v5, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngleX:I

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget v6, v6, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngleY:I

    neg-int v6, v6

    # invokes: Lcom/sec/android/app/launcher/activities/LauncherActivity;->parallaxChangePosition(II)V
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1900(Lcom/sec/android/app/launcher/activities/LauncherActivity;II)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSideTouchEnabled:Z
    invoke-static {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1600(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget v4, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->orientationAngle:I

    const/16 v5, 0x78

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget v4, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->orientationAngle:I

    const/16 v5, 0x3c

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget v4, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngle:I

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iget v4, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->tiltAngle:I

    const/16 v5, -0x1e

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isSideCameraReady:Z

    const-string v4, "LauncherActivity"

    const-string v5, "onSensorChanged: isSideCameraReady set TRUE. Angle is ready! "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$SensorListener;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isSideCameraReady:Z

    goto :goto_0
.end method
