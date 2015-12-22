.class public abstract Landroid/view/OrientationEventListener;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final localLOGV:Z

.field private static mRotationMode:I


# instance fields
.field private fSumRotateAngle_Y:F

.field private fSumRotateAngle_Z:F

.field private mDataIndex:Z

.field private mEnabled:Z

.field private mEnabledGyro:Z

.field private mGyro:Landroid/hardware/Sensor;

.field private mOldListener:Landroid/view/OrientationListener;

.field private mOrientation:I

.field private mPreOrientation:I

.field private mPredata:[F

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mX_StuckCnt:I

.field private mY_StuckCnt:I

.field private mZ_StuckCnt:I

.field private m_StableCnt:I

.field private m_StcukDurationTHD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/view/OrientationEventListener;->mRotationMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    iput v2, p0, Landroid/view/OrientationEventListener;->mPreOrientation:I

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabledGyro:Z

    iput v0, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    iput v0, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    iput v0, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    iput v0, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    iput v1, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    iput v1, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mDataIndex:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mPredata:[F

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    :cond_0
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mGyro:Landroid/hardware/Sensor;

    iget v0, p0, Landroid/view/OrientationEventListener;->mRate:I

    packed-switch v0, :pswitch_data_0

    iput v3, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    :goto_0
    const-string v0, "OrientationEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const/16 v0, 0x90

    iput v0, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x24

    iput v0, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xc

    iput v0, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    goto :goto_0

    :pswitch_3
    iput v4, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Landroid/view/OrientationEventListener;->mRotationMode:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Landroid/view/OrientationEventListener;->mRotationMode:I

    return p0
.end method

.method static synthetic access$100(Landroid/view/OrientationEventListener;)I
    .locals 1

    iget v0, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    return v0
.end method

.method static synthetic access$1000(Landroid/view/OrientationEventListener;)[F
    .locals 1

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mPredata:[F

    return-object v0
.end method

.method static synthetic access$102(Landroid/view/OrientationEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    return p1
.end method

.method static synthetic access$108(Landroid/view/OrientationEventListener;)I
    .locals 2

    iget v0, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    return v0
.end method

.method static synthetic access$1100(Landroid/view/OrientationEventListener;)I
    .locals 1

    iget v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return v0
.end method

.method static synthetic access$1102(Landroid/view/OrientationEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return p1
.end method

.method static synthetic access$1200(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;
    .locals 1

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/view/OrientationEventListener;)I
    .locals 1

    iget v0, p0, Landroid/view/OrientationEventListener;->mPreOrientation:I

    return v0
.end method

.method static synthetic access$1302(Landroid/view/OrientationEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->mPreOrientation:I

    return p1
.end method

.method static synthetic access$1400(Landroid/view/OrientationEventListener;)F
    .locals 1

    iget v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    return v0
.end method

.method static synthetic access$1402(Landroid/view/OrientationEventListener;F)F
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    return p1
.end method

.method static synthetic access$1418(Landroid/view/OrientationEventListener;D)F
    .locals 3

    iget v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    float-to-double v0, v0

    add-double/2addr v0, p1

    double-to-float v0, v0

    iput v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Y:F

    return v0
.end method

.method static synthetic access$1500(Landroid/view/OrientationEventListener;)F
    .locals 1

    iget v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    return v0
.end method

.method static synthetic access$1502(Landroid/view/OrientationEventListener;F)F
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    return p1
.end method

.method static synthetic access$1518(Landroid/view/OrientationEventListener;D)F
    .locals 3

    iget v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    float-to-double v0, v0

    add-double/2addr v0, p1

    double-to-float v0, v0

    iput v0, p0, Landroid/view/OrientationEventListener;->fSumRotateAngle_Z:F

    return v0
.end method

.method static synthetic access$200(Landroid/view/OrientationEventListener;)I
    .locals 1

    iget v0, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    return v0
.end method

.method static synthetic access$202(Landroid/view/OrientationEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    return p1
.end method

.method static synthetic access$208(Landroid/view/OrientationEventListener;)I
    .locals 2

    iget v0, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    return v0
.end method

.method static synthetic access$300(Landroid/view/OrientationEventListener;)I
    .locals 1

    iget v0, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    return v0
.end method

.method static synthetic access$302(Landroid/view/OrientationEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    return p1
.end method

.method static synthetic access$308(Landroid/view/OrientationEventListener;)I
    .locals 2

    iget v0, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    return v0
.end method

.method static synthetic access$400(Landroid/view/OrientationEventListener;)I
    .locals 1

    iget v0, p0, Landroid/view/OrientationEventListener;->m_StcukDurationTHD:I

    return v0
.end method

.method static synthetic access$500(Landroid/view/OrientationEventListener;)I
    .locals 1

    iget v0, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    return v0
.end method

.method static synthetic access$502(Landroid/view/OrientationEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    return p1
.end method

.method static synthetic access$508(Landroid/view/OrientationEventListener;)I
    .locals 2

    iget v0, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/view/OrientationEventListener;->m_StableCnt:I

    return v0
.end method

.method static synthetic access$600(Landroid/view/OrientationEventListener;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabledGyro:Z

    return v0
.end method

.method static synthetic access$602(Landroid/view/OrientationEventListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/OrientationEventListener;->mEnabledGyro:Z

    return p1
.end method

.method static synthetic access$700(Landroid/view/OrientationEventListener;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mGyro:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/OrientationEventListener;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/view/OrientationEventListener;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mDataIndex:Z

    return v0
.end method

.method static synthetic access$902(Landroid/view/OrientationEventListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/OrientationEventListener;->mDataIndex:Z

    return p1
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    :cond_1
    sput v2, Landroid/view/OrientationEventListener;->mRotationMode:I

    iput v2, p0, Landroid/view/OrientationEventListener;->mX_StuckCnt:I

    iput v2, p0, Landroid/view/OrientationEventListener;->mY_StuckCnt:I

    iput v2, p0, Landroid/view/OrientationEventListener;->mZ_StuckCnt:I

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    goto :goto_0
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method registerListener(Landroid/view/OrientationListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-void
.end method
