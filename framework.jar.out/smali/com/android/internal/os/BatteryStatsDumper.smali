.class public Lcom/android/internal/os/BatteryStatsDumper;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDumper$1;,
        Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryStatsDumper"

.field public static db:Lcom/android/internal/os/BatteryStatsDBHelper;

.field static mIsOnBattery:Z

.field private static sPrevBatteryLevel:I

.field public static sScreenOn:Z


# instance fields
.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mStatsType:I

.field private pm:Landroid/content/pm/PackageManager;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStatsType:I

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->pm:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    sget-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    :cond_0
    return-void
.end method

.method private addScreenUsage(J)D
    .locals 23

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v20, "screen.on"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v10, v10, v18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "screen.full"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v6, v7, :cond_0

    int-to-float v7, v6

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v7, v7, v18

    float-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    div-double v12, v18, v20

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v6, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v8, v12, v18

    const-string v7, "BatteryStatsDumper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Screen bin #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " power="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-wide v20, 0x414b774000000000L    # 3600000.0

    div-double v20, v8, v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-double/2addr v10, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-wide v18, 0x414b774000000000L    # 3600000.0

    div-double v10, v10, v18

    return-wide v10
.end method

.method private getByteFromFile(Ljava/lang/String;)B
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    const/4 v3, -0x1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private getMobilePowerPerMs()D
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket(J)D
    .locals 23

    const-wide/32 v4, 0x30d40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v18, v0

    const-string/jumbo v19, "radio.active"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v14

    add-long v8, v12, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    :goto_0
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    :cond_0
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_0
.end method

.method private getWifiPowerPerPacket()D
    .locals 8

    const-wide v6, 0x40ac200000000000L    # 3600.0

    const-wide/32 v0, 0xf4240

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private load()V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public computeSavedTimeAfterKillingPackage(Ljava/lang/String;)J
    .locals 22

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl;->getNumDischargeStepDurations()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStepDurationsArray()[J

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: batteryLevel:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dischageStepsNum: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-gtz v8, :cond_0

    const-wide/16 v10, -0x1

    :goto_0
    return-wide v10

    :catchall_0
    move-exception v18

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v9

    const-string v18, "BatteryStatsDumper"

    const-string v19, "computeSavedTimeAfterKillingPackage::  Exception"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v16, 0x0

    const-wide v14, 0xffffffffffL

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_1

    :try_start_5
    aget-wide v18, v3, v10

    and-long v18, v18, v14

    add-long v16, v16, v18

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit16 v0, v8, 0xe10

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-double v6, v0

    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: consumptionRateTotal:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_2

    const-wide/16 v10, -0x1

    goto :goto_0

    :cond_2
    sget-object v18, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAverageLevelDropPerHour(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmpl-double v18, v6, v4

    if-lez v18, :cond_3

    sub-double v12, v6, v4

    :goto_2
    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "New battery consumption rate = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Previous consumptionRateOfPackage: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    mul-double v20, v6, v12

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v10, v0

    const-string v18, "BatteryStatsDumper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "computeSavedTimeAfterKillingPackage:: returning i:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_3
    sub-double v12, v4, v6

    goto :goto_2
.end method

.method public deleteTableForApp(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteTableForApp(Ljava/lang/String;)V

    return-void
.end method

.method public dumpConsumingAppDetails(Ljava/io/PrintWriter;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpConsumingAppDetails(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getBatteryLevel()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDumper;->getByteFromFile(Ljava/lang/String;)B

    move-result v1

    if-gez v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getBatteryTotalCapacity()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public handleTimeChange()V
    .locals 1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->handleTimeChange()V

    return-void
.end method

.method public modifyThresholdIfNecessary()V
    .locals 1

    sget-object v0, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->modifyThresholdIfNecessary()V

    return-void
.end method

.method public refreshStats(ZZ)V
    .locals 116

    const-string v15, "BatteryStatsDumper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "In refreshStats isReason Screen ON/OFF: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->load()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v15, v15, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    sput-boolean v15, Lcom/android/internal/os/BatteryStatsDumper;->mIsOnBattery:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "sensor"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    :cond_0
    const/16 v101, 0x0

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v15}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v82

    move/from16 v0, v82

    new-array v0, v0, [D

    move-object/from16 v66, v0

    move/from16 v0, v82

    new-array v0, v0, [J

    move-object/from16 v31, v0

    const/16 v60, 0x0

    :goto_0
    move/from16 v0, v60

    move/from16 v1, v82

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "cpu.active"

    move-object/from16 v0, v16

    move/from16 v1, v60

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v16

    aput-wide v16, v66, v60

    add-int/lit8 v60, v60, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    mul-long v48, v16, v114

    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDumper;->getMobilePowerPerPacket(J)D

    move-result-wide v52

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDumper;->getWifiPowerPerPacket()D

    move-result-wide v104

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Landroid/util/SparseArray;->size()I

    move-result v27

    const/16 v45, 0x0

    :goto_1
    move/from16 v0, v45

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    move-object/from16 v0, v92

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/os/BatteryStats$Uid;

    const-wide/16 v6, 0x0

    const-wide/16 v42, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v67

    const-wide/16 v36, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v102, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v94, 0x0

    invoke-interface/range {v67 .. v67}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_8

    invoke-interface/range {v67 .. v67}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_2
    :goto_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/Map$Entry;

    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/os/BatteryStats$Uid$Proc;

    const/4 v15, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v96

    const/4 v15, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v84

    const/4 v15, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v40

    const-wide/16 v16, 0xa

    mul-long v16, v16, v40

    add-long v34, v34, v16

    add-long v16, v96, v84

    const-wide/16 v114, 0xa

    mul-long v88, v16, v114

    const/16 v90, 0x0

    const/16 v83, 0x0

    :goto_3
    move/from16 v0, v83

    move/from16 v1, v82

    if-ge v0, v1, :cond_3

    const/4 v15, 0x0

    move-object/from16 v0, v72

    move/from16 v1, v83

    invoke-virtual {v0, v1, v15}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v16

    aput-wide v16, v31, v83

    move/from16 v0, v90

    int-to-long v0, v0

    move-wide/from16 v16, v0

    aget-wide v114, v31, v83

    add-long v16, v16, v114

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v90, v0

    add-int/lit8 v83, v83, 0x1

    goto :goto_3

    :cond_3
    if-nez v90, :cond_4

    const/16 v90, 0x1

    :cond_4
    const-wide/16 v70, 0x0

    const/16 v83, 0x0

    :goto_4
    move/from16 v0, v83

    move/from16 v1, v82

    if-ge v0, v1, :cond_5

    aget-wide v16, v31, v83

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v90

    int-to-double v0, v0

    move-wide/from16 v114, v0

    div-double v74, v16, v114

    move-wide/from16 v0, v88

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v74

    aget-wide v114, v66, v83

    mul-double v16, v16, v114

    add-double v70, v70, v16

    add-int/lit8 v83, v83, 0x1

    goto :goto_4

    :cond_5
    add-long v36, v36, v88

    const-wide/16 v16, 0x0

    cmpl-double v15, v70, v16

    if-eqz v15, :cond_2

    add-double v6, v6, v70

    if-eqz v64, :cond_6

    const-string v15, "*"

    move-object/from16 v0, v64

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    move-wide/from16 v42, v70

    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    cmpg-double v15, v42, v70

    if-gez v15, :cond_2

    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v16, "*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    move-wide/from16 v42, v70

    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    cmp-long v15, v34, v36

    if-lez v15, :cond_a

    const-wide/16 v16, 0x2710

    add-long v16, v16, v36

    cmp-long v15, v34, v16

    if-lez v15, :cond_9

    const-string v15, "BatteryStatsDumper"

    const-string v16, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-wide/from16 v36, v34

    :cond_a
    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v6, v6, v16

    add-long v12, v12, v36

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v100

    invoke-interface/range {v100 .. v100}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_b
    :goto_5
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Ljava/util/Map$Entry;

    invoke-interface/range {v99 .. v99}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v15, 0x0

    move-object/from16 v0, v98

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v87

    if-eqz v87, :cond_b

    const/4 v15, 0x0

    move-object/from16 v0, v87

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    add-long v102, v102, v16

    goto :goto_5

    :cond_c
    const-wide/16 v16, 0x3e8

    div-long v102, v102, v16

    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v18, "cpu.awake"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    add-double v6, v6, v60

    add-long v12, v12, v102

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v54

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v56

    const/4 v15, 0x0

    move-object/from16 v0, v91

    invoke-virtual {v0, v15}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v50

    add-long v16, v54, v56

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v60, v16, v52

    add-double v6, v6, v60

    add-long v12, v12, v50

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v108

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v112

    add-long v16, v108, v112

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v60, v16, v104

    add-double v6, v6, v60

    const/4 v15, 0x0

    move-object/from16 v0, v91

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    div-long v106, v16, v114

    move-wide/from16 v0, v106

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "wifi.on"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    add-double v6, v6, v60

    add-long v12, v12, v106

    const/4 v15, 0x0

    move-object/from16 v0, v91

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    div-long v110, v16, v114

    move-wide/from16 v0, v110

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "wifi.scan"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    add-double v6, v6, v60

    add-long v12, v12, v110

    const/16 v30, 0x0

    :goto_6
    const/4 v15, 0x5

    move/from16 v0, v30

    if-ge v0, v15, :cond_d

    const/4 v15, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v30

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    div-long v28, v16, v114

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "wifi.batchedscan"

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    add-double v6, v6, v60

    add-long v12, v12, v28

    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    :cond_d
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v44, 0x0

    :goto_7
    move/from16 v0, v44

    if-ge v0, v4, :cond_10

    move-object/from16 v0, v79

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/os/BatteryStats$Uid$Sensor;

    move-object/from16 v0, v79

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v77

    invoke-virtual/range {v76 .. v76}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v87

    const/4 v15, 0x0

    move-object/from16 v0, v87

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    const-wide/16 v114, 0x3e8

    div-long v80, v16, v114

    const-wide/16 v58, 0x0

    packed-switch v77, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v78

    invoke-interface/range {v78 .. v78}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_e
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/hardware/Sensor;

    invoke-virtual/range {v73 .. v73}, Landroid/hardware/Sensor;->getHandle()I

    move-result v15

    move/from16 v0, v77

    if-ne v15, v0, :cond_e

    invoke-virtual/range {v73 .. v73}, Landroid/hardware/Sensor;->getPower()F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v58, v0

    :cond_f
    :goto_8
    move-wide/from16 v0, v80

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v58

    const-wide v114, 0x414b774000000000L    # 3600000.0

    div-double v60, v16, v114

    add-double v6, v6, v60

    add-long v12, v12, v80

    add-int/lit8 v44, v44, 0x1

    goto :goto_7

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v16, "gps.on"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v58

    goto :goto_8

    :cond_10
    const-wide/16 v16, 0x0

    cmpg-double v15, v6, v16

    if-gez v15, :cond_11

    const-string v15, "BatteryStatsDumper"

    const-string v16, " calculated power is negative"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    :cond_11
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v86

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->pm:Landroid/content/pm/PackageManager;

    move/from16 v0, v86

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v65

    if-eqz v65, :cond_13

    move-object/from16 v0, v65

    array-length v15, v0

    if-lez v15, :cond_13

    const/4 v15, 0x0

    aget-object v8, v65, v15

    :goto_9
    invoke-static/range {v86 .. v86}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v93

    const/4 v9, 0x0

    const/16 v15, 0x2710

    move/from16 v0, v86

    if-ge v0, v15, :cond_12

    const/4 v9, 0x1

    :cond_12
    add-double v32, v32, v6

    add-long v16, v108, v112

    add-long v16, v16, v54

    add-long v10, v16, v56

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getPackageStats()Ljava/util/Map;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v16, "wakeup.power"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v68

    invoke-interface/range {v63 .. v63}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_a
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/Map$Entry;

    invoke-interface/range {v62 .. v62}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Pkg;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeups(I)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "BatteryStatsDumper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " wakeUpCount :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    move-object/from16 v8, v64

    goto :goto_9

    :cond_14
    int-to-double v0, v14

    move-wide/from16 v16, v0

    mul-double v94, v16, v68

    add-double v6, v6, v94

    if-eqz v8, :cond_15

    if-nez v93, :cond_15

    new-instance v5, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    const/4 v15, 0x0

    invoke-direct/range {v5 .. v15}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(DLjava/lang/String;ZJJILcom/android/internal/os/BatteryStatsDumper$1;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDumper;->addScreenUsage(J)D

    move-result-wide v16

    add-double v32, v32, v16

    move-wide/from16 v24, v32

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v15}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v114

    mul-double v16, v16, v114

    const-wide/high16 v114, 0x4059000000000000L    # 100.0

    div-double v46, v16, v114

    cmpl-double v15, v46, v32

    if-lez v15, :cond_17

    move-wide/from16 v24, v46

    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v0, v15, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move/from16 v23, v0

    sget v15, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    sub-int v22, v15, v23

    const-string v15, "BatteryStatsDumper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Previous Battery Level: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Current Level: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Delta: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v22, :cond_18

    const/16 v22, 0x0

    :cond_18
    sput v23, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    sget-object v16, Lcom/android/internal/os/BatteryStatsDumper;->db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsDumper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getHighDischargeAmountSinceCharge()I

    move-result v26

    move/from16 v17, p1

    move/from16 v18, p2

    invoke-virtual/range {v16 .. v26}, Lcom/android/internal/os/BatteryStatsDBHelper;->addStatsToDB(ZZJLjava/util/ArrayList;IIDI)V

    const-string v15, "BatteryStatsDumper"

    const-string v16, "Writing to database completed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public updatePrevBatteryValue()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDumper;->getBatteryLevel()I

    move-result v0

    sput v0, Lcom/android/internal/os/BatteryStatsDumper;->sPrevBatteryLevel:I

    return-void
.end method
