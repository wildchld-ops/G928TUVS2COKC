.class Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
.super Ljava/lang/Object;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TotalTableData"
.end annotation


# instance fields
.field private batteryDeltaForOneDay:I

.field private batteryDeltaForOneHour:I

.field private totalPowerForOneDay:D

.field private totalPowerForOneHour:D


# direct methods
.method private constructor <init>(DIDI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D

    iput p3, p0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneDay:D

    iput p6, p0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneDay:I

    return-void
.end method

.method synthetic constructor <init>(DIDILcom/android/internal/os/BatteryStatsDBHelper$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;-><init>(DIDI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneDay:D

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneDay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I

    return v0
.end method
