.class Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
.super Ljava/lang/Object;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastTotalDatabaseInfo"
.end annotation


# instance fields
.field private batteryLevel:I

.field private totalPower:D


# direct methods
.method private constructor <init>(DI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->totalPower:D

    iput p3, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->batteryLevel:I

    return-void
.end method

.method synthetic constructor <init>(DILcom/android/internal/os/BatteryStatsDBHelper$1;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;-><init>(DI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->totalPower:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->batteryLevel:I

    return v0
.end method
