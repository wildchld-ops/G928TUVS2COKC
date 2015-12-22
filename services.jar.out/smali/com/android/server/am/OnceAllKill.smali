.class public Lcom/android/server/am/OnceAllKill;
.super Landroid/app/job/JobService;
.source "OnceAllKill.java"


# static fields
.field static final BACKGROUND_ONCEALLKILL_JOB:I = 0x1bc

.field static final TAG:Ljava/lang/String; = "OnceAllKill"

.field private static sOnceAllKillServiceName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/am/OnceAllKill;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnceAllKill;->sOnceAllKillServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0x1bc

    const/4 v4, 0x1

    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v5}, Landroid/app/job/JobScheduler;->cancel(I)V

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget-object v3, Lcom/android/server/am/OnceAllKill;->sOnceAllKillServiceName:Landroid/content/ComponentName;

    invoke-direct {v2, v5, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    const-string v2, "OnceAllKill"

    const-string v3, "SA_SAMP OnceAllKill onStartJob() - begin"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    new-instance v2, Lcom/android/server/am/OnceAllKill$1;

    const-string v3, "OnceAllKill_Killer"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/server/am/OnceAllKill$1;-><init>(Lcom/android/server/am/OnceAllKill;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v2}, Lcom/android/server/am/OnceAllKill$1;->start()V

    const-string v2, "OnceAllKill"

    const-string v3, "SA_SAMP OnceAllKill onStartJob() - end"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "OnceAllKill"

    const-string/jumbo v1, "onIdleStop"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
