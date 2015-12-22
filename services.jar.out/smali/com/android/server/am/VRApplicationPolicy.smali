.class public Lcom/android/server/am/VRApplicationPolicy;
.super Ljava/lang/Object;
.source "VRApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/VRApplicationPolicy$H;,
        Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FEATURE_HMT:Z = true

.field private static final TAG:Ljava/lang/String; = "VRApplicationPolicy"

.field private static final VRSERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc"

.field private static final VRSETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizard"

.field private static final VRSETUPWIZARD_STUB_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizardstub"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHMTconnected:Z

.field final mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mVRDevelopMode:Z

.field private mVRSettingsObserver:Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z

    iput-boolean v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    new-instance v0, Lcom/android/server/am/VRApplicationPolicy$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/VRApplicationPolicy$H;-><init>(Lcom/android/server/am/VRApplicationPolicy;)V

    iput-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

    iput-object p1, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/VRApplicationPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/VRApplicationPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/VRApplicationPolicy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/VRApplicationPolicy;->resetVRFlingerStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/VRApplicationPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/VRApplicationPolicy;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/VRApplicationPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/VRApplicationPolicy;->comeOutOfVRmodeLocked()V

    return-void
.end method

.method private comeOutOfVRmodeLocked()V
    .locals 2

    const-string v0, "VRApplicationPolicy"

    const-string v1, "comeOutOfVRmode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getReasonForCancelingVRActivityLocked(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_setupwizard_completed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.app.vrsetupwizardstub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.app.vrsetupwizard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "setup_wizard"

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "VRApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getReasonForCancelingVRActivity : The reason is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "hmt"

    goto :goto_0
.end method

.method private resetVRFlingerStatus(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/data/com.gvrf.vrlauncher/files/flinger_status.txt"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v5, Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_8

    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_0
    move-object v0, v1

    move-object v4, v5

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_2
    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_3
    return-void

    :catch_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_5
    const/4 v0, 0x0

    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_6
    const/4 v4, 0x0

    const/4 v2, 0x0

    goto :goto_3

    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_8
    const/4 v0, 0x0

    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_7
    :goto_9
    const/4 v4, 0x0

    const/4 v2, 0x0

    throw v6

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_5

    :catch_4
    move-exception v6

    goto :goto_6

    :catch_5
    move-exception v7

    goto :goto_8

    :catch_6
    move-exception v7

    goto :goto_9

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_7

    :catchall_2
    move-exception v6

    move-object v4, v5

    move-object v2, v3

    goto :goto_7

    :catchall_3
    move-exception v6

    move-object v0, v1

    move-object v4, v5

    move-object v2, v3

    goto :goto_7

    :catch_7
    move-exception v6

    move-object v2, v3

    goto :goto_4

    :catch_8
    move-exception v6

    move-object v4, v5

    move-object v2, v3

    goto :goto_4

    :catch_9
    move-exception v6

    move-object v0, v1

    move-object v4, v5

    move-object v2, v3

    goto :goto_4

    :cond_8
    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStack;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getVRStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const-string/jumbo v0, "vr"

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ActivityStack;->mVRStack:Z

    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->setToVRStack(I)V

    const-string v0, "create vr"

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    return-object v1
.end method

.method inVRMode()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isVRActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHMTconnected()Z
    .locals 2

    const-string/jumbo v0, "sys.hmt.connected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public notifyToVRServiceLocked(Landroid/content/Intent;I)V
    .locals 3

    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "VRApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send to vr service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public readyToStartVRActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .locals 9

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/VRApplicationPolicy;->getReasonForCancelingVRActivityLocked(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.CANCEL_LAUNCHING"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x48000000    # 131072.0f

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    const-string/jumbo v0, "reason"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "restart_intent"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p0, v8, v0}, Lcom/android/server/am/VRApplicationPolicy;->notifyToVRServiceLocked(Landroid/content/Intent;I)V

    const-string v0, "VRApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ready to start vr activity by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public startVRHomeLocked(I)Z
    .locals 26

    const-string v1, "VRApplicationPolicy"

    const-string/jumbo v3, "start VR Home"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "vr_launcher_package"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1

    invoke-static/range {v25 .. v25}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v24

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p1

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v5, v2

    invoke-virtual/range {v3 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "VRApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No VR Home "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "VRApplicationPolicy"

    const-string v3, "VR home is not set"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/am/VRApplicationPolicy$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/VRApplicationPolicy$1;-><init>(Lcom/android/server/am/VRApplicationPolicy;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    new-instance v4, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;

    invoke-direct {v4, p0}, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;-><init>(Lcom/android/server/am/VRApplicationPolicy;)V

    iput-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRSettingsObserver:Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;

    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRSettingsObserver:Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    monitor-exit v4

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
