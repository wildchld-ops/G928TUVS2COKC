.class public Lcom/android/phone/CallTime;
.super Landroid/os/Handler;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallTime$OnTickListener;
    }
.end annotation


# static fields
.field private static sProfileState:I


# instance fields
.field private mCall:Lcom/android/internal/telephony/Call;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallTime$OnTickListener;

.field private mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallTime$OnTickListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    new-instance v0, Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/CallTime;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    return p1
.end method

.method static getCallDuration(Lcom/android/internal/telephony/Call;)J
    .locals 9

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v4

    :cond_0
    return-wide v4

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    move-wide v4, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PHONE/CallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateElapsedTime(Lcom/android/internal/telephony/Call;)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-interface {v2, v4, v5}, Lcom/android/phone/CallTime$OnTickListener;->onTickForCallTimeElapsed(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTime;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    return-void
.end method

.method isTraceReady()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTraceRunning()Z
    .locals 2

    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public periodicUpdateTimer()V
    .locals 10

    iget-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    iget-wide v8, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long v0, v6, v8

    :goto_0
    cmp-long v5, v2, v0

    if-ltz v5, :cond_0

    iget-wide v6, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long/2addr v0, v6

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/phone/CallTime;->postAtTime(Ljava/lang/Runnable;J)Z

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v5}, Lcom/android/phone/CallTime;->updateElapsedTime(Lcom/android/internal/telephony/Call;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceReady()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallTime;->startTrace()V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    return-void
.end method

.method public setActiveCallMode(Lcom/android/internal/telephony/Call;)V
    .locals 2

    iput-object p1, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mInterval:J

    return-void
.end method

.method startTrace()V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget v4, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_0
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const-string v7, "phoneTrace"

    invoke-virtual {v4, v7, v6}, Lcom/android/phone/PhoneGlobals;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "callstate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".data"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".key"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 v4, 0x2

    sput v4, Lcom/android/phone/CallTime;->sProfileState:I

    const-string v4, "startTrace"

    invoke-static {v4}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    const/high16 v4, 0x800000

    invoke-static {v0, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    :cond_3
    return-void

    :cond_4
    move v4, v6

    goto/16 :goto_0
.end method

.method stopTrace()V
    .locals 2

    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    const-string v0, "stopTrace"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    :cond_0
    return-void
.end method
