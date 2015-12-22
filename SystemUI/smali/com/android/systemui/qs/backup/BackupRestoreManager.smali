.class public Lcom/android/systemui/qs/backup/BackupRestoreManager;
.super Landroid/content/BroadcastReceiver;
.source "BackupRestoreManager.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "ACTION"

.field private static final ACTION_CANCEL:I = 0x2

.field private static final ACTION_START:I = 0x0

.field private static final ERR_CODE:Ljava/lang/String; = "ERR_CODE"

.field private static final ERR_CODE_INVALID_DATA:I = 0x3

.field private static final ERR_CODE_STORAGE_FULL:I = 0x2

.field private static final ERR_CODE_SUCCESS:I = 0x0

.field private static final ERR_CODE_UNKNOWN_ERR:I = 0x1

.field private static final FILE_NAME:Ljava/lang/String; = "/quicksettings"

.field public static final REQUEST_BACKUP_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_BACKUP_QUICKPANEL_SETTING"

.field public static final REQUEST_RESTORE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_RESTORE_QUICKPANEL_SETTING"

.field private static final REQ_SIZE:Ljava/lang/String; = "REQ_SIZE"

.field public static final RESPOND_BACKUP_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_QUICKPANEL_SETTING"

.field public static final RESPOND_RESTORE_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_QUICKPANEL_SETTING"

.field private static final RESULT:Ljava/lang/String; = "RESULT"

.field private static final RESULT_FAIL:I = 0x1

.field private static final RESULT_OK:I = 0x0

.field private static final SAVE_PATH:Ljava/lang/String; = "SAVE_PATH"

.field private static final SESSION_KEY:Ljava/lang/String; = "SESSION_KEY"

.field private static final SOURCE:Ljava/lang/String; = "SOURCE"

.field private static final TAG:Ljava/lang/String; = "BackupRestoreManager"

.field private static final TEMP_FILE_NAME:Ljava/lang/String; = "/quicksettings_tmp"


# instance fields
.field private final MAX_ACTIVE_BUTTONS_ZERO:I

.field private final SEPARATOR:Ljava/lang/String;

.field private mBackupThread:Ljava/lang/Thread;

.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mContext:Landroid/content/Context;

.field private mRestoreThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->MAX_ACTIVE_BUTTONS_ZERO:I

    const-string v0, " "

    iput-object v0, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->SEPARATOR:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/backup/BackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/backup/BackupRestoreManager;->backupQsOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/backup/BackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/backup/BackupRestoreManager;->restoreQsOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private backupQsOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v11, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_number_of_apps"

    const/16 v5, 0xa

    invoke-static {v0, v1, v5, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v6, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x3

    :cond_0
    :goto_0
    const-string v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_QUICKPANEL_SETTING"

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/backup/BackupRestoreManager;->respond(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v10, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/android/systemui/qs/backup/Encryption;->streamCrypt(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/quicksettings"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/qs/backup/Encryption;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v10, :cond_0

    :try_start_1
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v9

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_0

    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v9

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_0

    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_1
    throw v0

    :catch_5
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private respond(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 2

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

    iget-object v1, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private restoreQsOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x400

    new-array v9, v1, [B

    const/4 v15, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/qs/backup/Encryption;->streamCrypt(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/quicksettings"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/systemui/qs/backup/Encryption;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v11

    const/4 v12, 0x0

    :goto_0
    const/16 v1, 0x400

    if-ge v15, v1, :cond_0

    const/16 v1, 0x400

    invoke-virtual {v11, v9, v15, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    const/4 v1, -0x1

    if-eq v12, v1, :cond_0

    add-int/2addr v15, v12

    goto :goto_0

    :cond_0
    if-eqz v11, :cond_1

    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    new-instance v13, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v13, v9, v1, v15}, Ljava/lang/String;-><init>([BII)V

    const-string v1, " "

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_number_of_apps"

    const/4 v6, -0x2

    invoke-static {v1, v2, v8, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_app_list"

    const/4 v6, -0x2

    invoke-static {v1, v2, v7, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postResetQsEditPanel()V

    :cond_2
    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_QUICKPANEL_SETTING"

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/backup/BackupRestoreManager;->respond(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v10

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v10

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v11, :cond_1

    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_2
    throw v1

    :catch_5
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BackupRestoreManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "SAVE_PATH"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "SESSION_KEY"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "SOURCE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ACTION"

    const/4 v7, 0x2

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "com.samsung.android.intent.action.REQUEST_BACKUP_QUICKPANEL_SETTING"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "BackupRestoreManager"

    const-string v7, "backup is already in progress"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;

    invoke-direct {v7, p0, v3, v2, v5}, Lcom/android/systemui/qs/backup/BackupRestoreManager$1;-><init>(Lcom/android/systemui/qs/backup/BackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->stop()V

    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/quicksettings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_4
    const-string v6, "com.samsung.android.intent.action.REQUEST_RESTORE_QUICKPANEL_SETTING"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mRestoreThread:Ljava/lang/Thread;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mRestoreThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BackupRestoreManager"

    const-string v7, "restore is in progress"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/systemui/qs/backup/BackupRestoreManager$2;

    invoke-direct {v7, p0, v3, v2, v5}, Lcom/android/systemui/qs/backup/BackupRestoreManager$2;-><init>(Lcom/android/systemui/qs/backup/BackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mRestoreThread:Ljava/lang/Thread;

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    iget-object v6, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mRestoreThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public register()V
    .locals 4

    const-string v1, "com.android.systemui.permission.BACKUP_RESTORE"

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.intent.action.REQUEST_BACKUP_QUICKPANEL_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.intent.action.REQUEST_RESTORE_QUICKPANEL_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/backup/BackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
