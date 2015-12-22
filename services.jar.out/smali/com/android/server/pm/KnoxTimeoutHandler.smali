.class public Lcom/android/server/pm/KnoxTimeoutHandler;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;,
        Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_LOCK_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

.field private static final LOG_TAG:Ljava/lang/String; = "KnoxTimeoutHandler"

.field private static final MSG_ACTIVE_USER_CHANGE:I = 0x1

.field private static final MSG_CANCEL_LOCK_TIMEOUT:I = 0x3

.field private static final MSG_HOME_SHOW:I = 0x4

.field private static final MSG_RESET_LOCK_TIMEOUT:I = 0x2

.field private static final PERSONA_ID:Ljava/lang/String; = "personaId"


# instance fields
.field private isKnox:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentId:I

.field private mCurrentPersonaId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/pm/PersonaManagerService;

.field private final mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$1;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->registerTapInputEventListener()V

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->registerTimeoutReceiver()V

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->registerSystemPersonaObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/pm/KnoxTimeoutHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/KnoxTimeoutHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/KnoxTimeoutHandler;->handleActiveUserChange(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->cancelLockTimer(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->handleHomeShow(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/KnoxTimeoutHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/KnoxTimeoutHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized cancelLockTimer(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cancel lock timer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "personaId"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const/high16 v5, 0x48000000    # 131072.0f

    invoke-static {v4, p1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v1
.end method

.method private declared-synchronized handleActiveUserChange(II)V
    .locals 9

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_0
    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleActiveUserChange for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iput p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " active change for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "KnoxTimeoutHandler"

    const-string v5, " reset timeout from active user change"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v4, v3, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v4, :cond_2

    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is removed, no locking needed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isUserHasTrust "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V

    goto :goto_0

    :cond_3
    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " container is locked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowManagerService;->handleKnoxKeyguard(IZ)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shared devices show user state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "isEmergencyCall"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v1, :cond_6

    if-ne v2, v8, :cond_6

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    if-ne p2, v4, :cond_6

    :cond_5
    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shared devices flag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->handleKnoxKeyguard(IZ)V

    goto/16 :goto_0

    :cond_6
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_7

    iput p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleActiveUserChange, flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v6, v6, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v6, v6, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_0

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v5, v5, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->handleKnoxKeyguard(IZ)V

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_8

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_8

    iput p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguardIfNeeded()V

    goto/16 :goto_0

    :cond_8
    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target Activity is not fullscreen. We will not show this activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private handleHomeShow(I)V
    .locals 4

    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleHomeShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    if-eq v1, p1, :cond_0

    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " launch home intent for calibration because home is shown for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private registerSystemPersonaObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    new-instance v1, Lcom/android/server/pm/KnoxTimeoutHandler$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$2;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    return-void
.end method

.method private registerTapInputEventListener()V
    .locals 3

    const-string v0, "KnoxTimeoutHandler"

    const-string v1, " register tap input event listener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    return-void
.end method

.method private registerTimeoutReceiver()V
    .locals 3

    const-string v1, "KnoxTimeoutHandler"

    const-string v2, " register time out receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized resetLockTimer(I)V
    .locals 12

    monitor-enter p0

    :try_start_0
    const-string v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " reset lock timer for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Wake lock acquired for this user. Ignore reset timeout for userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "personaId"

    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const/high16 v9, 0x48000000    # 131072.0f

    invoke-static {v8, p1, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v8, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v4

    const-string v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " timeout value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x3

    add-long v10, v2, v4

    invoke-virtual {v8, v9, v10, v11, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method declared-synchronized getForegroundUser()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onHomeShow(I)V
    .locals 4

    const-string v0, "KnoxTimeoutHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "post home show event for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method postActiveUserChange(IZZ)V
    .locals 4

    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postActiveUserChange for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p3, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postActiveUserChange, showWhenLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method postTimeoutCancel(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method postTimeoutReset(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setWakeLockAcquired(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method
