.class public Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;
.super Ljava/lang/Object;
.source "SettingBackupRestoreUtils.java"


# static fields
.field private static final ACTION_BACKUP:I = 0x0

.field private static final ACTION_RESTORE:I = 0x1

.field private static final BACKUP_FILE:Ljava/lang/String; = "com.sec.android.inputmethod.setting.backup_preferences"

.field private static final REQUEST_ACTION_CANCEL:I = 0x2

.field private static final REQUEST_ACTION_START:I = 0x0

.field private static final RESPONSE_BACKUP_SIP:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_SIP"

.field private static final RESPONSE_PERMISSION:Ljava/lang/String; = "com.sec.android.inputmethod.permission.BACKUP_RESTORE"

.field private static final RESPONSE_RESTORE_SIP:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_SIP"

.field private static final fail_unknown_error:I = 0x1

.field private static final invalid_data:I = 0x3

.field private static final ok_success:I = 0x0

.field private static final storage_full:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mRequestAction:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mRepository:Lcom/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mRequestAction:I

    iput-object p1, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ime/framework/common/InputManagerImpl;->getInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    return-void
.end method

.method private encryptFile(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreAES;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x400

    new-array v0, v8, [B

    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v2

    move-object v4, v5

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    move-object v1, v2

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_a
    throw v8

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_4

    :catchall_2
    move-exception v8

    move-object v1, v2

    move-object v4, v5

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v4, v5

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v1, v2

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_1

    :catch_5
    move-exception v3

    move-object v4, v5

    goto :goto_1

    :cond_b
    move-object v1, v2

    move-object v4, v5

    goto :goto_2
.end method


# virtual methods
.method decryptFile(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v7}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreAES;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v2, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v7

    move-object v3, v4

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    move-object v6, v7

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_a
    throw v8

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_4

    :catchall_2
    move-exception v8

    move-object v6, v7

    move-object v3, v4

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v6, v7

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v6, v7

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v6, v7

    goto :goto_1

    :cond_b
    move-object v6, v7

    move-object v3, v4

    goto :goto_2
.end method

.method public getRequestAction()I
    .locals 1

    iget v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mRequestAction:I

    return v0
.end method

.method sendResponse(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ERR_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SOURCE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.inputmethod.permission.BACKUP_RESTORE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestAction(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mRequestAction:I

    return-void
.end method

.method settingBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    iget-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SIP"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    iget-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.inputmethod.setting.backup_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.inputmethod.setting.backup_preferences"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {p0, v10, v8}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->settingBackupSync(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod.setting.backup_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    invoke-static {p3}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreAES;->StreamCrypt(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mRequestAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SIP"

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SIP"

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SIP"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_2
    invoke-direct {p0, v11, v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->encryptFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SIP"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SIP"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method settingBackupSync(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const-string v3, "phrase1"

    const-string v4, "phrase1"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "phrase2"

    const-string v4, "phrase2"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "phrase3"

    const-string v4, "phrase3"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "phrase4"

    const-string v4, "phrase4"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "phrase5"

    const-string v4, "phrase5"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "phrase6"

    const-string v4, "phrase6"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "phrase7"

    const-string v4, "phrase7"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "phrase8"

    const-string v4, "phrase8"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "phrase9"

    const-string v4, "phrase9"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "phrase10"

    const-string v4, "phrase10"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_PREDICTION_ON"

    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_AUTO_CAPS"

    const-string v4, "SETTINGS_DEFAULT_AUTO_CAPS"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const-string v4, "SETTINGS_DEFAULT_AUTO_PERIOD"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    const-string v4, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_USE_PREVIEW"

    const-string v4, "SETTINGS_DEFAULT_USE_PREVIEW"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    const-string v4, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_AUTO_SPACING"

    const-string v4, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_USE_STANDARD_DATA"

    const-string v4, "SETTINGS_USE_STANDARD_DATA"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_SHORTCUT_PHRASE"

    const-string v4, "SETTINGS_SHORTCUT_PHRASE"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_PEN_DETECTION"

    const-string v4, "SETTINGS_DEFAULT_PEN_DETECTION"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "keyboard_height_level"

    const-string v4, "keyboard_height_level"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "keyboard_height_level"

    invoke-interface {p1, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "keyboard_height_level"

    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "keyboard_height_level_landscape"

    const-string v4, "keyboard_height_level_landscape"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "keyboard_height_level_landscape"

    invoke-interface {p1, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "keyboard_height_level_landscape"

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method settingRestore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v1, :cond_1

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_SIP"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v15, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.sec.android.inputmethod.setting.backup_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.inputmethod.setting.backup_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.inputmethod.setting.backup_preferences"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreAES;->StreamCrypt(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mRequestAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_SIP"

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_SIP"

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->decryptFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_2
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_SIP"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_0

    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_SIP"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->settingRestoreSync(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;)V

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_SIP"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v11, :cond_6

    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v10, v11

    goto/16 :goto_0

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    goto/16 :goto_0

    :catch_4
    move-exception v8

    :goto_1
    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_SIP"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->sendResponse(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v10, :cond_0

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v10, :cond_5

    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_3
    throw v1

    :catch_6
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v10, v11

    goto :goto_2

    :catch_7
    move-exception v8

    move-object v10, v11

    goto :goto_1

    :cond_6
    move-object v10, v11

    goto/16 :goto_0
.end method

.method settingRestoreSync(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const/4 v9, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "phrase1"

    const-string v5, "phrase1"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "phrase2"

    const-string v5, "phrase2"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "phrase3"

    const-string v5, "phrase3"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "phrase4"

    const-string v5, "phrase4"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "phrase5"

    const-string v5, "phrase5"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "phrase6"

    const-string v5, "phrase6"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "phrase7"

    const-string v5, "phrase7"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "phrase8"

    const-string v5, "phrase8"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "phrase9"

    const-string v5, "phrase9"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "phrase10"

    const-string v5, "phrase10"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_DEFAULT_PREDICTION_ON"

    const-string v5, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_DEFAULT_AUTO_CAPS"

    const-string v5, "SETTINGS_DEFAULT_AUTO_CAPS"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const-string v5, "SETTINGS_DEFAULT_AUTO_PERIOD"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_DEFAULT_TRACE"

    const-string v5, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_DEFAULT_USE_PREVIEW"

    const-string v5, "SETTINGS_DEFAULT_USE_PREVIEW"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    const-string v5, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_DEFAULT_AUTO_SPACING"

    const-string v5, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_USE_STANDARD_DATA"

    const-string v5, "SETTINGS_USE_STANDARD_DATA"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_SHORTCUT_PHRASE"

    const-string v5, "SETTINGS_SHORTCUT_PHRASE"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "SETTINGS_DEFAULT_PEN_DETECTION"

    const-string v5, "SETTINGS_DEFAULT_PEN_DETECTION"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v8, "keyboard_height_level"

    const-string v5, "keyboard_height_level"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "keyboard_height_level"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "keyboard_height_level"

    invoke-interface {p1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v8, "keyboard_height_level_landscape"

    const-string v5, "keyboard_height_level_landscape"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "keyboard_height_level_landscape"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "keyboard_height_level_landscape"

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-array v0, v9, [I

    fill-array-data v0, :array_0

    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    const/4 v5, 0x4

    if-gt v3, v5, :cond_1

    if-gez v3, :cond_2

    :cond_1
    const/4 v3, 0x2

    :cond_2
    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v3}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightLevel(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_4

    aget v5, v0, v2

    int-to-float v5, v5

    iget-object v8, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v5, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v2

    if-ne v2, v3, :cond_3

    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget v8, v0, v2

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightDelta(I)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setNeedChangeKeyboardHeight(Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "com.sec.android.inputmethod.height"

    iget-object v9, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    const-string v5, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v5, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sip_key_feedback_vibration"

    if-eqz v1, :cond_7

    move v5, v6

    :goto_2
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v5, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "sip_key_feedback_sound"

    if-eqz v1, :cond_8

    :goto_3
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_6
    iget-object v5, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "com.sec.android.inputmethod.height_landscape"

    iget-object v9, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/inputmethod/settingsync/SettingBackupRestoreUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v5, v7

    goto :goto_2

    :cond_8
    move v6, v7

    goto :goto_3

    :array_0
    .array-data 4
        -0x1a
        -0xd
        0x0
        0xd
        0x1a
    .end array-data
.end method
