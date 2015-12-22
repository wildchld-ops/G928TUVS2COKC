.class public Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;
.super Landroid/database/ContentObserver;
.source "CocktailBarSettingObserver.java"


# static fields
.field private static final ACTION_COCKTAILBAR_SETTING_CHANGED:Ljava/lang/String; = "com.samsung.android.edge.intent.action.SETTING_CHANGED"

.field private static final NIGHTCLOCK_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.edge.nightclock.NightClockService"

.field private static final NIGHTCLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.edge.setting"

.field private static final PEOPLE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.service.peoplestripe.PeopleStripeService"

.field private static final PEOPLE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.service.peoplestripe"

.field private static final TAG:Ljava/lang/String; = "CocktailBarSettingObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastActiveEdgeArea:I

.field private mLastIsInformationStreamOn:Z

.field private mLastIsNightModeOn:Z

.field private mLastIsPeopleStripeOn:Z

.field private mLastIsTaskEdgeOn:Z

.field private mLastIsTurnOverLightingOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastActiveEdgeArea:I

    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastActiveEdgeArea:I

    return v0
.end method

.method private setupWakeup()V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "edge_information_stream"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "active_edge_area"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v5, "CocktailBarSettingObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupWakeup : setting is changed. ,isInformationStreamOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsInformationStreamOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",activeEdgeArea="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastActiveEdgeArea:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mInitialized="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsInformationStreamOn:Z

    if-eq v1, v5, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsInformationStreamOn:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    iget v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastActiveEdgeArea:I

    if-eq v0, v3, :cond_3

    :cond_2
    iput v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastActiveEdgeArea:I

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver$1;

    invoke-direct {v4, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver$1;-><init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;)V

    const-wide/16 v6, 0xa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    move v1, v4

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v4}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    goto :goto_1
.end method

.method private startNightClockServiceIfNeed()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "night_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    const-string v1, "CocktailBarSettingObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNightClockServiceIfNeed : setting is changed. ,isNightModeOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsNightModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsNightModeOn:Z

    if-eq v0, v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsNightModeOn:Z

    const-string v1, "com.samsung.android.app.edge.setting"

    const-string v2, "com.samsung.android.app.edge.nightclock.NightClockService"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private startPeopleStripeServiceIfNeed()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "turn_over_lighting"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "people_stripe"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v0, v3

    :goto_1
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "task_edge"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v1, v3

    :goto_2
    const-string v3, "CocktailBarSettingObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPeopleStripeServiceIfNeed : setting is changed. isTurnOverLighting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsTurnOverLightingOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isPeopleStripeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsPeopleStripeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isTaskEdgeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsTaskEdgeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mInitialized="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsTurnOverLightingOn:Z

    if-ne v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsPeopleStripeOn:Z

    if-ne v0, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsTaskEdgeOn:Z

    if-eq v1, v3, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsTurnOverLightingOn:Z

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsPeopleStripeOn:Z

    iput-boolean v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsTaskEdgeOn:Z

    const-string v3, "com.samsung.android.service.peoplestripe"

    const-string v4, "com.samsung.android.service.peoplestripe.PeopleStripeService"

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto/16 :goto_0

    :cond_3
    move v0, v4

    goto/16 :goto_1

    :cond_4
    move v1, v4

    goto/16 :goto_2
.end method

.method private startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.edge.intent.action.SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "CocktailBarSettingObserver"

    const-string v3, "error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSetting()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->startPeopleStripeServiceIfNeed()V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->startNightClockServiceIfNeed()V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->setupWakeup()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "turn_over_lighting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "people_stripe"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "night_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "task_edge"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edge_information_stream"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "active_edge_area"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->updateSetting()V

    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const-string v7, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "reason"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "CocktailBarSettingObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EMERGENCY_STATE_CHANGED : reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_2

    iget-boolean v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsPeopleStripeOn:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsTaskEdgeOn:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsTurnOverLightingOn:Z

    if-eqz v7, :cond_1

    :cond_0
    const-string v7, "com.samsung.android.service.peoplestripe"

    const-string v8, "com.samsung.android.service.peoplestripe.PeopleStripeService"

    const-string v9, "emergencyMode"

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastIsNightModeOn:Z

    if-eqz v7, :cond_2

    const-string v7, "com.samsung.android.app.edge.setting"

    const-string v8, "com.samsung.android.app.edge.nightclock.NightClockService"

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_2

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_2

    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_5
    const-string v7, "com.samsung.android.service.peoplestripe"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput-boolean v9, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->startPeopleStripeServiceIfNeed()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mInitialized:Z

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->updateSetting()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
