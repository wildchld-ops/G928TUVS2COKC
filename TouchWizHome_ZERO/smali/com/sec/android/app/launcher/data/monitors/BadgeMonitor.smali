.class public Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;
.super Lcom/sec/android/app/launcher/data/monitors/DataMonitor;
.source "BadgeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;,
        Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;
    }
.end annotation


# static fields
.field private static final BADGE_COLUMNS:[Ljava/lang/String;

.field public static final BADGE_INTERNAL_URI:Landroid/net/Uri;

.field public static final BADGE_URI:Landroid/net/Uri;

.field private static final INITIAL_BADGE_CAPACITY:I = 0x14

.field public static final USING_BADGE_APPS_LIST:[[Ljava/lang/String;

.field public static pendingBadgeUpdate:Z


# instance fields
.field private final mBadgeListener:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;

.field private final mBadges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->BADGE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.badge/internal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->BADGE_INTERNAL_URI:Landroid/net/Uri;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v4

    const-string v1, "class"

    aput-object v1, v0, v5

    const-string v1, "badgecount"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->BADGE_COLUMNS:[Ljava/lang/String;

    sput-boolean v4, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->pendingBadgeUpdate:Z

    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.android.mms"

    aput-object v2, v1, v4

    const-string v2, "com.android.mms.ui.ConversationComposer"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.android.email"

    aput-object v2, v1, v4

    const-string v2, "com.android.email.activity.Welcome"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.samsung.android.email.ui"

    aput-object v2, v1, v4

    const-string v2, "com.samsung.android.email.ui.activity.MessageListXL"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v4

    const-string v2, "com.android.dialer.DialtactsActivity"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.sec.android.app.samsungapps"

    aput-object v3, v2, v4

    const-string v3, "com.sec.android.app.samsungapps.SamsungAppsMainActivity"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.samsung.contacts"

    aput-object v3, v2, v4

    const-string v3, "com.samsung.contacts.activities.DialtactsActivity"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.android.jcontacts"

    aput-object v3, v2, v4

    const-string v3, "com.android.jcontacts.activities.DialtactsActivity"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->USING_BADGE_APPS_LIST:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;)V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mBadges:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mBadgeListener:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;

    return-void
.end method


# virtual methods
.method getBadgeCount(Landroid/content/ComponentName;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mBadges:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;->mCount:I

    :cond_0
    return v0
.end method

.method public getbadgeCount()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mBadges:Ljava/util/HashMap;

    return-object v0
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->pendingBadgeUpdate:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->pendingBadgeUpdate:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->updateBadgeCounts()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mBadgeListener:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mBadgeListener:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;->onBadgeUpdated(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->BADGE_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->BADGE_INTERNAL_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->start([Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->pendingBadgeUpdate:Z

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->stop()V

    return-void
.end method

.method public updateBadgeCounts()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->BADGE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->BADGE_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_7

    sget-object v1, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->USING_BADGE_APPS_LIST:[[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Z

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mBadges:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;

    const/4 v1, 0x0

    iput v1, v8, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v13

    :try_start_1
    const-string v1, "Launcher.BadgeCache"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_1
    return-object v9

    :cond_0
    :goto_2
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v17, :cond_0

    if-eqz v11, :cond_0

    const/4 v7, -0x1

    const/4 v14, 0x0

    :goto_3
    sget-object v1, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->USING_BADGE_APPS_LIST:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v14, v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->USING_BADGE_APPS_LIST:[[Ljava/lang/String;

    aget-object v1, v1, v14

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->USING_BADGE_APPS_LIST:[[Ljava/lang/String;

    aget-object v1, v1, v14

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v7, v14

    :cond_1
    if-eqz v8, :cond_5

    if-ltz v7, :cond_4

    aget-boolean v1, v16, v7

    if-eqz v1, :cond_4

    const-string v1, "Launcher.BadgeCache, "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not updateBadgeCounts!!, multiple data for appIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    if-ltz v7, :cond_0

    const/4 v1, 0x1

    aput-boolean v1, v16, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v10}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v1

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    :try_start_3
    const-string v1, "Launcher.BadgeCache, "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBadgeCounts, app["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " badges"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mBadges:Ljava/util/HashMap;

    new-instance v2, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;

    invoke-direct {v2, v8}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;-><init>(I)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    if-eqz v11, :cond_2

    if-nez v8, :cond_2

    const-string v1, "Launcher.BadgeCache, "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBadgeCounts, app["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " badges"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->mBadges:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    :cond_7
    invoke-static {v10}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_1
.end method
