.class public Lcom/sec/android/inputmethod/scloudsync/SipSyncProvider;
.super Landroid/content/ContentProvider;
.source "SipSyncProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.inputmethod.scloudsync.SipSyncProvider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SYNC_FREQ_IN_SECONDS:J = 0x15180L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.inputmethod.scloudsync.SipSyncProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static addPeriodicSync(Landroid/accounts/Account;J)V
    .locals 5

    const-string v1, "com.sec.android.inputmethod.scloudsync.SipSyncProvider"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.sec.android.inputmethod.scloudsync.SipSyncProvider"

    invoke-static {p0, v1, v0, p1, p2}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    const-string v1, "SamsungIME_SYNC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPeriodicSync: addPeriodicSync at Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isSyncActive(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/inputmethod/scloudsync/AccountHelper;->getRegisteredSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod.scloudsync.SipSyncProvider"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isSyncPending(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/inputmethod/scloudsync/AccountHelper;->getRegisteredSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod.scloudsync.SipSyncProvider"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static removePeriodicSync(Landroid/accounts/Account;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.sec.android.inputmethod.scloudsync.SipSyncProvider"

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static triggerSync(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/sec/android/inputmethod/scloudsync/SipSyncProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    const-string v2, "SamsungIME_SYNC"

    const-string v3, "Trigger Synced"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
