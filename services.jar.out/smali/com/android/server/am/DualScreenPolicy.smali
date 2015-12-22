.class public Lcom/android/server/am/DualScreenPolicy;
.super Ljava/lang/Object;
.source "DualScreenPolicy.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final DEFAULT_FINISH_WITH_COUPLED_TASK:Z = true

.field private static final TAG:Ljava/lang/String; = "DualScreenPolicy"

.field public static final USE_INTERNAL_APIS:Ljava/lang/String; = "com.samsung.android.dualscreen.permission.USE_INTERNAL_APIS"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static canBeCoupled(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private canBeLinkedApp(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->isScreenOn(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : SUBSCREEN is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-eqz p4, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From system(null)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "android"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.systemui"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From android or systemui"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v2, "com.google.android.setupwizard"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From setupwizard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From Launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isSamsungHomeActivity()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v1, "DualScreenPolicy"

    const-string v2, "canbeLinkedApp Case : called from HomeActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_9

    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : exist resultTo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_b

    const-class v2, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-class v2, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : Resolver(ChooserActivity)Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->isInFixedScreenMode()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v2, v3, :cond_c

    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : In FixedScreenMode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_d

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v0, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_d
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : else"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getPolicyOrientation(II)I
    .locals 2

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, p0

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    if-eqz p0, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-ne p0, v1, :cond_0

    :cond_1
    move v0, p0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/16 v1, 0x9

    if-eq p0, v1, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    :cond_2
    move v0, p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isCoupled(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getParentCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v5, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v4, v5, :cond_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v4, v5, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static makeTaskInfo(Lcom/android/server/am/TaskRecord;)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 8

    const/4 v7, 0x3

    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Lcom/samsung/android/dualscreen/TaskInfo;

    iget v6, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getType()I

    move-result v4

    if-lt v4, v7, :cond_1

    if-ne v4, v7, :cond_4

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v5, v4}, Lcom/samsung/android/dualscreen/TaskInfo;->setTaskType(I)V

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/dualscreen/TaskInfo;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    :goto_2
    iget-boolean v6, p0, Lcom/android/server/am/TaskRecord;->fixed:Z

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setFixed(Z)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getParentCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v2, :cond_2

    iget v6, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setParentCoupledTaskId(I)V

    :cond_2
    if-eqz v0, :cond_3

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setChildCoupledTaskId(I)V

    :cond_3
    iget-boolean v6, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    iput-boolean v6, v5, Lcom/samsung/android/dualscreen/TaskInfo;->canMoveTaskToScreen:Z

    goto :goto_0

    :cond_4
    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_2
.end method


# virtual methods
.method public applyDualScreenAttrs(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/android/server/am/DualScreenAttrs;
    .locals 1

    new-instance v0, Lcom/android/server/am/DualScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/DualScreenAttrs;-><init>()V

    return-object v0
.end method

.method public arrangeFullViewPolicyOnResumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DualScreenPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v17, "dual_screen_fullview_shrink_mode"

    const/16 v18, 0x1

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DualScreenPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    add-int/lit8 v8, v4, -0x1

    :goto_1
    if-ltz v8, :cond_3

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->getDisplayObscuredZone()I

    move-result v13

    if-eqz v13, :cond_4

    if-nez v15, :cond_2

    move-object/from16 v15, v16

    :cond_2
    or-int/2addr v6, v13

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_4

    move-object/from16 v9, v16

    :cond_3
    if-eqz v15, :cond_0

    if-eqz v9, :cond_0

    if-eq v15, v9, :cond_0

    iget-object v0, v15, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getDisplayObscuredZone()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual {v15}, Lcom/android/server/am/TaskRecord;->getDisplayObscuredZone()I

    move-result v17

    rsub-int/lit8 v10, v17, 0x3

    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->convertObsucredZoneToDisplayId(I)I

    move-result v5

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_0

    invoke-static {v5}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/DualScreenManagerService;->self()Lcom/android/server/am/DualScreenManagerService;

    move-result-object v17

    iget v0, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/android/server/am/DualScreenManagerService;->handleMoveTaskToScreen(IILandroid/os/Bundle;Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_1
.end method

.method public getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullViewLaunchWithPriority(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    const-string v0, "com.samsung.android.sdk.dualscreen.fullview.launchWithPriority"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/DualScreenPolicy;->getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportFullView(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    const-string v0, "com.samsung.android.sdk.dualscreen.fullview.enable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/DualScreenPolicy;->getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resolveDisplayChooser(Landroid/content/Intent;Lcom/android/server/am/ActivityRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 6

    const/4 v2, 0x1

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : rInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : DualScreenFeatures.SUPPORT_DISPLAY_CHOOSER="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : FocusedStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    if-ne v3, v4, :cond_1

    sget-boolean v3, Lcom/samsung/android/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    if-eqz v3, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v3}, Lcom/android/server/am/DualScreenAttrs;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v3, v4, :cond_3

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p3, :cond_3

    sget-boolean v3, Lcom/samsung/android/dualscreen/DualScreenFeatures;->SUPPORT_OPPOSITE_LAUNCH:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->getInstance()Lcom/samsung/android/dualscreen/DualScreenConfigs;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->isOppositeLaunchSupportApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setFromOppositeLaunchApp(Z)V

    :cond_2
    sget-boolean v3, Lcom/samsung/android/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setAppTokenDisplayIdLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->setAppTokenDisplayId(Landroid/view/IApplicationToken;I)V

    return-void
.end method

.method public updateScreenForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 6

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateScreenForAllActivitiesInTask() : screen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v3}, Lcom/android/server/am/DualScreenAttrs;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    if-eq v3, p2, :cond_2

    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateScreenForAllActivitiesInTask() : update r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v3, p2}, Lcom/android/server/am/DualScreenAttrs;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    iget-object v4, p0, Lcom/android/server/am/DualScreenPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/DualScreenPolicy;->setAppTokenDisplayIdLocked(Lcom/android/server/am/ActivityRecord;I)V

    monitor-exit v4

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
