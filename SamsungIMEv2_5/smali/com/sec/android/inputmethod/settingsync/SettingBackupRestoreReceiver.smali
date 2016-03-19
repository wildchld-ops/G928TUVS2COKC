.class public Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingBackupRestoreReceiver.java"


# static fields
.field private static final REQUEST_ACTION_CANCEL:I = 0x2

.field private static final REQUEST_ACTION_START:I = 0x0

.field private static final REQUEST_BACKUP_SIP:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_BACKUP_SIP"

.field private static final REQUEST_RESTORE_SIP:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_RESTORE_SIP"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x2

    const-string v0, "SamsungIME"

    const-string v1, "onReceive SettingBackupRestoreReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v8, p1

    const-string v0, "SAVE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SAVE_PATH :"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SOURCE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SOURCE :"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SESSION_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "ACTION"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION :"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;

    invoke-direct {v2, v8}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->setRequestAction(I)V

    if-ne v6, v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_SIP"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SamsungIME"

    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_SIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$1;-><init>(Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver;Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_SIP"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_SIP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver$2;-><init>(Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreReceiver;Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
