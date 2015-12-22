.class public Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;
.super Landroid/content/BroadcastReceiver;
.source "XmlBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;,
        Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;
    }
.end annotation


# static fields
.field private static final CSC_FILE_MAINMENU:Ljava/lang/String; = "default_application_order.xml"

.field private static final CSC_FILE_WORKSPACE:Ljava/lang/String; = "default_workspace.xml"

.field private static final DEBUGGABLE:Z

.field public static final DEFAULT_LAYOUT_SOURCE:Ljava/lang/String; = "DEFAULT_LAYOUT"

.field public static final HOMESCREEN_BACKUP_EXML:Ljava/lang/String; = "/homescreen.exml"

.field public static final REQUEST_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

.field public static final REQUEST_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_HOMESCREEN"

.field private static final RESPONSE_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_BACKUP_HOMESCREEN"

.field private static final RESPONSE_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_RESTORE_HOMESCREEN"

.field private static final SAMSUNG_WIDGET_THEMENAME:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

.field private static final SCLOUD_SOURCE:Ljava/lang/String; = "SCLOUD"

.field private static final SD_DIRECTORY:Ljava/lang/String; = "LCExtractor"

.field private static final TAG:Ljava/lang/String; = "HomeScreenXmlBackup"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_COLUMNS:Ljava/lang/String; = "Columns"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_HOME:Ljava/lang/String; = "home"

.field private static final TAG_HOMEONLY:Ljava/lang/String; = "homeOnly"

.field private static final TAG_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final TAG_HOTSEAT_HOMEONLY:Ljava/lang/String; = "hotseat_homeOnly"

.field private static final TAG_PAGECOUNT:Ljava/lang/String; = "PageCount"

.field private static final TAG_ROWS:Ljava/lang/String; = "Rows"

.field private static final TAG_SACTIVITYWIDGET:Ljava/lang/String; = "sactivitywidget"

.field private static final TAG_SCREEN_INDEX:Ljava/lang/String; = "ScreenIndex"

.field private static bEncryption:Z

.field private static cipher:Ljavax/crypto/Cipher;

.field private static mIsCurrentDBHomeOnlyMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->DEBUGGABLE:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->bEncryption:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    const-string v15, "HomeScreenXmlBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RestoreLogs(), source: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/homescreen.exml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "HomeScreenXmlBackup"

    const-string v16, "not restore, because Restore file not exist"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_1
    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_1
    sget-boolean v15, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->bEncryption:Z

    if-eqz v15, :cond_5

    const-string v15, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v7, v10}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->decryptStream(Ljava/io/InputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    move-object v6, v7

    :goto_2
    if-eqz v8, :cond_7

    :try_start_3
    const-string v15, "HomeScreenXmlBackup"

    const-string v16, "1"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    const-string v15, "HomeScreenXmlBackup"

    const-string v16, "2"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    const-string v15, "HomeScreenXmlBackup"

    const-string v16, "3"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "utf-8"

    invoke-interface {v12, v8, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v15, "HomeScreenXmlBackup"

    const-string v16, "4"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v15, v12, v0, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    const-string v15, "HomeScreenXmlBackup"

    const-string v16, "5"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    if-eqz v8, :cond_2

    invoke-static {v8}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/InputStream;)V

    :cond_2
    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/InputStream;)V

    :cond_3
    :goto_5
    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    if-lez v3, :cond_4

    const-string v15, "HomeScreenXmlBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "result: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", err_code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v15, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    new-instance v13, Landroid/content/Intent;

    const-string v15, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMESCREEN"

    invoke-direct {v13, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "RESULT"

    invoke-virtual {v13, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v15, "ERR_CODE"

    invoke-virtual {v13, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v15, "REQ_SIZE"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v15, "SOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v13, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-direct {v11, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v15, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$2;

    invoke-direct {v15}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$2;-><init>()V

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v11, v15, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    :try_start_5
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v9

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const/4 v14, 0x1

    const/4 v3, 0x1

    const-string v15, "HomeScreenXmlBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DB Input exception = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :catch_2
    move-exception v2

    :goto_6
    const/4 v14, 0x1

    const/4 v3, 0x2

    :try_start_6
    const-string v15, "HomeScreenXmlBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "file exception = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_6

    invoke-static {v8}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/InputStream;)V

    :cond_6
    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/InputStream;)V

    goto/16 :goto_5

    :cond_7
    const/4 v14, 0x1

    const/4 v3, 0x2

    :try_start_7
    const-string v15, "HomeScreenXmlBackup"

    const-string v16, "InputStream is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v15

    :goto_7
    if-eqz v8, :cond_8

    invoke-static {v8}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/InputStream;)V

    :cond_8
    if-eqz v6, :cond_9

    invoke-static {v6}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/InputStream;)V

    :cond_9
    throw v15

    :catchall_1
    move-exception v15

    move-object v6, v7

    goto :goto_7

    :catch_3
    move-exception v2

    move-object v6, v7

    goto :goto_6
.end method

.method private static StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    const/16 v3, 0x10

    new-array v2, v3, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v2

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 34

    const-string v30, "HomeScreenXmlBackup"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "XmlGenerator(), source: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v30, "DEFAULT_LAYOUT"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeXml(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v30, "HomeScreenXmlBackup"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "dir fileList.length: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    array-length v0, v13

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v13

    array-length v0, v4

    move/from16 v22, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    aget-object v14, v4, v18

    new-instance v12, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v30

    if-nez v30, :cond_2

    const-string v30, "HomeScreenXmlBackup"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "file: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", delete failed"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_4
    const-string v30, "HomeScreenXmlBackup"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "dir.exists():"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v27, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/homescreen.exml"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_5

    :try_start_0
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_2
    const-string v30, "HomeScreenXmlBackup"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "saveFile.exists():"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;-><init>(Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$1;)V

    const/16 v20, 0x0

    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v20

    :goto_3
    const/16 v23, 0x0

    const/4 v15, 0x0

    :try_start_2
    new-instance v29, Ljava/io/StringWriter;

    invoke-direct/range {v29 .. v29}, Ljava/io/StringWriter;-><init>()V

    sget-boolean v30, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->bEncryption:Z

    if-eqz v30, :cond_c

    const-string v30, "SCLOUD"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_c

    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->encryptStream(Ljava/io/OutputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v23

    move-object/from16 v15, v16

    :goto_4
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v28

    if-nez v28, :cond_6

    const-string v30, "HomeScreenXmlBackup"

    const-string v31, "serializer is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    const/4 v8, 0x0

    const/16 v17, 0x0

    :try_start_5
    const-string v30, "UTF-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v30, "UTF-8"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportHomeModeChange()Z

    move-result v30

    if-eqz v30, :cond_7

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getCurrentDBHomeOnlyMode()Z

    move-result v30

    sput-boolean v30, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    :cond_7
    const-string v30, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v30, "home"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag_PageSetting(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v30, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v30, "home"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag_Home(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;)V

    const-string v30, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v30, "hotseat"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag_Hotseat(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v30, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeDefaultAppOrder(Landroid/content/Context;Ljava/lang/StringBuffer;Lorg/xmlpull/v1/XmlSerializer;)Z

    const-string v30, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v30, "homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag_PageSetting(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v30, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v30, "homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag_Home(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;)V

    const-string v30, "\n"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v30, "hotseat_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag_Hotseat(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_8

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v30

    if-nez v30, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v30

    if-nez v30, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_5
    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v29 .. v29}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v30

    const-string v31, "UTF-8"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v25, 0x0

    const/16 v30, 0x400

    move/from16 v0, v30

    new-array v7, v0, [B

    :goto_6
    const/16 v30, 0x0

    const/16 v31, 0x400

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v25

    const/16 v30, -0x1

    move/from16 v0, v25

    move/from16 v1, v30

    if-eq v0, v1, :cond_14

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v10

    :goto_7
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->result:I

    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->err_code:I

    const-string v30, "HomeScreenXmlBackup"

    const-string v31, "RuntimeException occured"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v23, :cond_a

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/OutputStream;)V

    :cond_a
    if-eqz v15, :cond_b

    invoke-static {v15}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/OutputStream;)V

    :cond_b
    :goto_8
    const-string v30, "SCLOUD"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_0

    new-instance v5, Landroid/content/Intent;

    const-string v30, "com.sec.android.intent.action.RESPONSE_BACKUP_HOMESCREEN"

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v30, "RESULT"

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->result:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v30, "ERR_CODE"

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->err_code:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v30, "REQ_SIZE"

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v30, "SOURCE"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_c
    :try_start_8
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v23, v24

    goto/16 :goto_4

    :catch_3
    move-exception v10

    :try_start_9
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->result:I

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->err_code:I

    const-string v30, "HomeScreenXmlBackup"

    const-string v31, "RuntimeException occured"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v8, :cond_d

    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v30

    if-nez v30, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v30

    if-nez v30, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    :catch_4
    move-exception v10

    :goto_9
    :try_start_b
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->result:I

    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->err_code:I

    const-string v30, "HomeScreenXmlBackup"

    const-string v31, "File error occured"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v23, :cond_e

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/OutputStream;)V

    :cond_e
    if-eqz v15, :cond_b

    invoke-static {v15}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_8

    :catch_5
    move-exception v10

    :try_start_c
    const-string v30, "HomeScreenXmlBackup"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception >>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->result:I

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->err_code:I

    const-string v30, "HomeScreenXmlBackup"

    const-string v31, "Error occured while generate XML"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v8, :cond_f

    :try_start_d
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v30

    if-nez v30, :cond_f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v30

    if-nez v30, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v30

    :goto_a
    if-eqz v23, :cond_10

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/OutputStream;)V

    :cond_10
    if-eqz v15, :cond_11

    invoke-static {v15}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/OutputStream;)V

    :cond_11
    throw v30

    :catchall_1
    move-exception v30

    if-eqz v8, :cond_12

    :try_start_e
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v31

    if-nez v31, :cond_12

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v17, :cond_13

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v31

    if-nez v31, :cond_13

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v30
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_14
    if-eqz v23, :cond_15

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/OutputStream;)V

    :cond_15
    if-eqz v15, :cond_b

    invoke-static {v15}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_8

    :catchall_2
    move-exception v30

    move-object/from16 v15, v16

    goto :goto_a

    :catch_6
    move-exception v10

    move-object/from16 v15, v16

    goto/16 :goto_9

    :catch_7
    move-exception v10

    move-object/from16 v15, v16

    goto/16 :goto_7
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static close(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static convertStringAMPERSAND(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "&(?!amp;)"

    const-string v2, "&amp;"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static createDirInSD(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->isSdMounted()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HomeScreenXmlBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem creating : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static decryptStream(Ljava/io/InputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v1, v5, [B

    array-length v5, v1

    if-lez v5, :cond_0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "decryptStream() readsize is -1, return null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v5, "HomeScreenXmlBackup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decryptStream(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sget-object v4, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v4, Ljavax/crypto/CipherInputStream;

    sget-object v5, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v4, p0, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    goto :goto_0
.end method

.method private static encryptStream(Ljava/io/OutputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sget-object v2, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    sget-object v3, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method private static getHsFolderItemById(Landroid/content/Context;ILorg/xmlpull/v1/XmlSerializer;)Ljava/lang/String;
    .locals 21

    const/16 v19, 0x0

    new-instance v7, Lcom/sec/android/app/launcher/BackupRestore/GenXml;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "intent , cellX , cellY , title"

    aput-object v2, v3, v1

    const-string v6, "cellY, cellX"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const-string v4, "container=? and containerId=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    const/4 v9, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    const/16 v17, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "intent"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    :try_start_2
    const-string v1, "title"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-virtual {v7, v1, v2, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v1, "favorite"

    const-string v2, ""

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v7, v1, v2, v4, v5}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "cellX"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v8, "launcher:screen"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v17, v17, 0x1

    :cond_0
    const-string v10, "launcher:packageName"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    const/4 v13, 0x4

    const/4 v14, 0x1

    move-object v9, v7

    invoke-virtual/range {v9 .. v14}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v10, "launcher:className"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/>"

    const/4 v13, 0x4

    const/4 v14, 0x1

    move-object v9, v7

    invoke-virtual/range {v9 .. v14}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v18

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_1
    move-exception v16

    :cond_2
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v16

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static getMenuFolderItemById(Landroid/content/Context;ILorg/xmlpull/v1/XmlSerializer;)Ljava/lang/String;
    .locals 19

    new-instance v7, Lcom/sec/android/app/launcher/BackupRestore/GenXml;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "containerId"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "pos"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "componentName"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and containerId = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "pos, title"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const/4 v15, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "componentName"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->parseComponentName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const-string v1, "title"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v5, 0x1

    invoke-virtual {v7, v1, v2, v5}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v1, "favorite"

    const-string v2, ""

    const/4 v5, 0x3

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v2, v5, v8}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v8, "launcher:screen"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v8, "launcher:packageName"

    const/4 v1, 0x0

    aget-object v9, v18, v1

    const-string v10, ""

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v8, "launcher:className"

    const/4 v1, 0x1

    aget-object v9, v18, v1

    const-string v10, "/>"

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v15, v15, 0x1

    if-eqz p2, :cond_0

    const-string v1, "favorite"

    const/4 v2, 0x3

    const/4 v5, 0x1

    invoke-virtual {v7, v1, v2, v5}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->endElement(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v16

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v14

    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static getPageOrder(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id , pageOrder"

    aput-object v1, v2, v0

    const-string v11, "pageOrder"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "pageOrder"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    const-string v0, "HomeScreenXmlBackup"

    const-string v1, "getPageSettings information : Failed to get Cursor from pageSettings.query"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v3

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    const-string v0, "HomeScreenXmlBackup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret_pageOrder = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static isSdMounted()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static makeDefaultAppOrder(Landroid/content/Context;Ljava/lang/StringBuffer;Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 31

    new-instance v9, Lcom/sec/android/app/launcher/BackupRestore/GenXml;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " container = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, " containerId , pos"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    invoke-static {v15}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "makeDefaultWorkSpace : Failed to get Cursor from contentResolver.query"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz p2, :cond_8

    const-string v3, "appOrder"

    const-string v4, ">"

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v9, v3, v4, v5, v7}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_1
    :try_start_0
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v3, "itemType"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    const-string v3, "containerId"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v3, "title"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v3, "componentName"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const/16 v25, -0x1

    const/16 v29, 0x0

    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, v25

    if-eq v0, v3, :cond_3

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v4, v5}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    :cond_3
    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    move/from16 v0, v26

    if-ne v0, v3, :cond_9

    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v4, v5}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v3, "folder"

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-virtual {v9, v3, v4, v5, v7}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const-string v10, "launcher:screen"

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    const-string v10, "launcher:title"

    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->convertStringAMPERSAND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ">"

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->getMenuFolderItemById(Landroid/content/Context;ILorg/xmlpull/v1/XmlSerializer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addStrBufData(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string v3, "folder"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v4, v5}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->endElement(Ljava/lang/String;II)V

    :cond_6
    :goto_3
    const-string v3, "\n"

    invoke-virtual {v9, v3}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addStrBufData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v18

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    const-string v3, "?xml version=\"1.0\" encoding=\"utf-8\"?"

    const-string v4, ">"

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v9, v3, v4, v5, v7}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addApacheLicense()V

    const-string v3, "appOrder xmlns:launcher=\"http://schemas.android.com/apk/res/com.sec.android.app.launcher\""

    const-string v4, ">"

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v9, v3, v4, v5, v7}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_9
    :try_start_2
    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v4, v5}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v3, "favorite"

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-virtual {v9, v3, v4, v5, v7}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    const-string v10, "launcher:screen"

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_a
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->parseComponentName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const-string v10, "launcher:packageName"

    const/4 v3, 0x0

    aget-object v11, v30, v3

    const-string v12, ""

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v10, "launcher:className"

    const/4 v3, 0x1

    aget-object v11, v30, v3

    const-string v12, "/>"

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p2, :cond_6

    const-string v3, "favorite"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v4, v5}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->endElement(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catch_1
    move-exception v16

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_b
    if-eqz p2, :cond_c

    :try_start_4
    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    const-string v3, "appOrder"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v4, v5}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->endElement(Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_d

    const/4 v3, 0x1

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_d
    :try_start_5
    const-string v3, "<b>[ Extraction Result Report ]</b><br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "default_application_order.xml"

    const/4 v4, 0x1

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v3, v4, v5, v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->write2Xml(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "LCExtractor"

    invoke-static {v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->createDirInSD(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v28

    if-nez v28, :cond_e

    const/4 v3, 0x0

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_e
    :try_start_6
    new-instance v17, Ljava/io/File;

    const-string v3, "default_application_order.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "default_application_order.xml"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->write2SDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "Extraction for <b><font color=\'green\'>Mainmenu</font></b> is <b><font color=\'green\'>done successfully</font></b>. <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : The customization that you do in target is extracted to <u>default_application_order.xml</u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " from Launcher database.<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "You can get the xml file from below path <br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=> /LCExtractor/default_application_order.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    const-string v3, "<br><br><br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_10
    :try_start_7
    const-string v3, "Extraction is done but <font color=\'red\'> copy to SD card is failed</font> <br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : The customization that you do in target is extracted to default_application_order.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " from Launcher database.<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "Check the SD card mount state or permission <br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "You can get the temporary xml file from below path via DDMS Tool <br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v3

    if-eqz v15, :cond_11

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v3

    :cond_12
    :try_start_8
    const-string v3, " => Extraction <font color=\'red\'> is failed</font> <br><br>"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6
.end method

.method private static makeDefaultWorkspace(Landroid/content/Context;Ljava/lang/StringBuffer;Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x1

    new-instance v1, Lcom/sec/android/app/launcher/BackupRestore/GenXml;

    invoke-direct {v1, p2}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->getPageOrder(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    move v8, v9

    :goto_0
    return v8

    :cond_0
    if-eqz p2, :cond_1

    const-string v8, "home"

    const-string v10, ">"

    invoke-virtual {v1, v8, v10, v9, v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_1
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v1, v2, v8, p2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeHomeTag(Landroid/content/Context;Lcom/sec/android/app/launcher/BackupRestore/GenXml;IILorg/xmlpull/v1/XmlSerializer;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error to make a Home items. page = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v11, v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    move v8, v9

    goto :goto_0

    :cond_1
    const-string v8, "?xml version=\"1.0\" encoding=\"utf-8\" ?"

    const-string v10, ">"

    invoke-virtual {v1, v8, v10, v9, v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addApacheLicense()V

    const-string v8, "favorites xmlns:launcher=\"http://schemas.android.com/apk/res/com.sec.android.app.launcher\""

    const-string v10, ">"

    invoke-virtual {v1, v8, v10, v9, v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v8, "home"

    const-string v10, ">"

    invoke-virtual {v1, v8, v10, v11, v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-string v8, "home"

    invoke-virtual {v1, v8, v11, v12}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->endElement(Ljava/lang/String;II)V

    const-string v8, "Hotseat (We use the screen as the position of the item in the hotseat)"

    invoke-virtual {v1, v8, v11, v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v8, "hotseat"

    const-string v10, ">"

    invoke-virtual {v1, v8, v10, v11, v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p0, v1, p2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeHotseatTag(Landroid/content/Context;Lcom/sec/android/app/launcher/BackupRestore/GenXml;Lorg/xmlpull/v1/XmlSerializer;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v8, "Error to make a Hotseat items."

    invoke-virtual {v1, v8, v11, v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    move v8, v9

    goto :goto_0

    :cond_4
    const-string v8, "hotseat"

    invoke-virtual {v1, v8, v11, v12}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->endElement(Ljava/lang/String;II)V

    const-string v8, "favorites"

    invoke-virtual {v1, v8, v9, v9}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->endElement(Ljava/lang/String;II)V

    const-string v8, "<b>[ Extraction Result Report ]</b><br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "default_workspace.xml"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v8, v11, v10, p1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->write2Xml(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "LCExtractor"

    invoke-static {v8}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->createDirInSD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    move v8, v9

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v8, "default_workspace.xml"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "default_workspace.xml"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->write2SDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "Extraction for <b><font color=\'green\'>Homescreen</font></b> is <b><font color=\'green\'> done successfully </font></b>. <br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " : The customization that you do in target is extracted to <u>default_workspace.xml</u>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " from Launcher database.<br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "You can get the xml file from below path <br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "=> /"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "LCExtractor"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "default_workspace.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    const-string v8, "<br><br><br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    move v8, v7

    goto/16 :goto_0

    :cond_7
    const-string v8, "Extraction is done but <font color=\'red\'> copy to SD card is failed</font> <br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " : The customization that you do in target is extracted to default_workspace.xml"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " from Launcher database.<br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "Check the SD card mount state or permission <br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "You can get the temporary xml file from below path via DDMS Tool <br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "=> "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    const-string v8, " => Extraction <font color=\'red\'> is failed</font> <br><br>"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method private static makeHomeTag(Landroid/content/Context;Lcom/sec/android/app/launcher/BackupRestore/GenXml;IILorg/xmlpull/v1/XmlSerializer;)Z
    .locals 34

    const/16 v30, 0x0

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " containerId = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v32, "cellY , cellX"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "cellY , cellX"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-nez v14, :cond_0

    invoke-static {v14}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    const-string v2, "HomeScreenXmlBackup"

    const-string v3, "makeHomeTag : Failed to get Cursor from contentResolver.query"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v2, "itemType"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    const-string v2, "containerId"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    const-string v2, "cellX"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v2, "cellY"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v2, "spanX"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v2, "spanY"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    const-string v2, "appWidgetId"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v2, "intent"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    const-string v2, "title"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const/16 v29, -0x1

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v0, v29

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " screen ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v31

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SAMSUNG_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v31

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SURFACE_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v31

    if-ne v0, v2, :cond_a

    :cond_2
    const-string v17, "favorite"

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SAMSUNG_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v31

    if-eq v2, v0, :cond_3

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SURFACE_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v31

    if-ne v2, v0, :cond_4

    :cond_3
    const-string v17, "sactivitywidget"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v33

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v30

    :try_start_2
    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:packageName"

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:className"

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v2, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v7, "launcher:themeName"

    const-string v2, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_5
    const-string v7, "launcher:screen"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v31

    if-ne v0, v2, :cond_9

    const-string v7, "launcher:x"

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:y"

    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/>"

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_6
    :goto_2
    const-string v2, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addStrBufData(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v18

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v16

    :cond_8
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_9
    :try_start_4
    const-string v7, "launcher:x"

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:y"

    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:spanX"

    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:spanY"

    move/from16 v0, v27

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/>"

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v16

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_a
    :try_start_6
    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v31

    if-ne v0, v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v2, "folder"

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:screen"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:title"

    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->convertStringAMPERSAND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:x"

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:y"

    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ">"

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->getHsFolderItemById(Landroid/content/Context;ILorg/xmlpull/v1/XmlSerializer;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addStrBufData(Ljava/lang/String;)V

    const-string v2, "folder"

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->endElement(Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    :cond_c
    :try_start_7
    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v31

    if-eq v0, v2, :cond_d

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_MAGAZINE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v31

    if-ne v0, v2, :cond_6

    :cond_d
    const-string v17, "appwidget"

    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    const/4 v15, 0x0

    if-eqz v12, :cond_e

    iget-object v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    :cond_e
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:packageName"

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:className"

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:screen"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:x"

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:y"

    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:spanX"

    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:spanY"

    move/from16 v0, v27

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/>"

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method private static makeHotseatTag(Landroid/content/Context;Lcom/sec/android/app/launcher/BackupRestore/GenXml;Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 26

    const/16 v22, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v24, "cellX"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "cellX"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    const-string v2, "HomeScreenXmlBackup"

    const-string v3, "makeHotseatTag : Failed to get Cursor from contentResolver.query"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v2, "itemType"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v2, "cellX"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v2, "intent"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v2, "title"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v23

    if-ne v0, v2, :cond_6

    const-string v14, "favorite"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v25

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    :try_start_2
    const-string v15, "/>"

    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:packageName"

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:className"

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:x"

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    move-object v9, v15

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    :goto_2
    const-string v2, "\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addStrBufData(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v16

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v13

    :cond_5
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_6
    :try_start_4
    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    move/from16 v0, v23

    if-ne v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addComment(Ljava/lang/String;II)V

    const-string v2, "folder"

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:title"

    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->convertStringAMPERSAND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->nullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v7, "launcher:x"

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ">"

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->getHsFolderItemById(Landroid/content/Context;ILorg/xmlpull/v1/XmlSerializer;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->addStrBufData(Ljava/lang/String;)V

    const-string v2, "folder"

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/launcher/BackupRestore/GenXml;->endElement(Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v13

    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method private static makeTag(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Ljava/util/Map;ILorg/xmlpull/v1/XmlSerializer;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I",
            "Lorg/xmlpull/v1/XmlSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v28

    const-string v29, "\n"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v29, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v29, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v29, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v29, "containerId"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const-string v29, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v29, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v29, "spanX"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    const-string v29, "spanY"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const-string v29, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v29, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v29, "appWidgetId"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v29, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v29, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v29, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v29, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const/16 v20, -0x1

    const-string v29, "home"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    const-string v29, "homeOnly"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    :cond_1
    if-eqz v22, :cond_2

    if-eqz p4, :cond_2

    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p4

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    if-lez v20, :cond_2

    sub-int v20, v20, p5

    :cond_2
    const/4 v8, 0x0

    if-eqz v17, :cond_3

    const/16 v16, 0x0

    const/16 v29, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    :cond_3
    const/16 v19, 0x0

    const/4 v7, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    :cond_4
    const/16 v25, 0x0

    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    const-string v25, "favorite"

    :cond_5
    :goto_0
    if-eqz v25, :cond_11

    const-string v29, "\n"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v29, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v29, "hotseat"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string v29, "hotseat_homeOnly"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17

    :cond_6
    const/16 v29, 0x0

    const-string v30, "screen"

    const-string v31, "0"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    if-eqz v19, :cond_7

    const/16 v29, 0x0

    const-string v30, "packageName"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    if-eqz v7, :cond_8

    const/16 v29, 0x0

    const-string v30, "className"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    if-eqz v27, :cond_9

    const/16 v29, 0x0

    const-string v30, "title"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    if-eqz v5, :cond_a

    const/16 v29, 0x0

    const-string v30, "x"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    const-string v29, "hotseat"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_b

    const-string v29, "hotseat_homeOnly"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    :cond_b
    const/16 v29, 0x0

    const-string v30, "y"

    const-string v31, "0"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    :goto_2
    const-string v29, "home"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_d

    const-string v29, "homeOnly"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    :cond_d
    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    if-eqz v23, :cond_e

    const/16 v29, 0x0

    const-string v30, "spanX"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    if-eqz v24, :cond_f

    const/16 v29, 0x0

    const-string v30, "spanY"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SAMSUNG_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    if-eqz v17, :cond_10

    const/16 v16, 0x0

    const/16 v29, 0x0

    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v16

    const-string v29, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_10

    const/16 v29, 0x0

    const-string v30, "themeName"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    :goto_3
    const/16 v29, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    :goto_4
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v29

    if-nez v29, :cond_0

    const-string v29, "\n"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v29, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catch_0
    move-exception v10

    const-string v29, "HomeScreenXmlBackup"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CONTAINER_ID converting error: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v10

    goto :goto_4

    :cond_12
    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    const-string v25, "shortcut"

    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    goto :goto_4

    :cond_13
    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    const-string v25, "appwidget"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v21

    if-eqz v21, :cond_5

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v27, v0

    goto/16 :goto_0

    :cond_14
    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SURFACE_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SAMSUNG_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    :cond_15
    const-string v25, "sactivitywidget"

    goto/16 :goto_0

    :cond_16
    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    const-string v25, "folder"

    goto/16 :goto_0

    :cond_17
    const/16 v29, 0x0

    const-string v30, "screen"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    :cond_18
    if-eqz v6, :cond_c

    const/16 v29, 0x0

    const-string v30, "y"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    :catch_2
    move-exception v10

    goto/16 :goto_4

    :cond_19
    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    if-eqz v12, :cond_1a

    if-eqz v13, :cond_1a

    const/16 v29, 0x0

    const-string v30, "iconPackage"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v29, 0x0

    const-string v30, "iconResource"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1a
    const/16 v29, 0x0

    const-string v30, "uri"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    const/16 v29, 0x0

    const-string v30, "icon"

    const/16 v31, 0x2

    move/from16 v0, v31

    invoke-static {v9, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3

    :cond_1b
    sget-object v29, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2, v15}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag_HomeFolder(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;I)V

    const-string v29, "\n"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3
.end method

.method private static makeTag_Home(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v11, 0x0

    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const-string v4, "home"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-eqz v4, :cond_3

    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_HOMEAPPS:Landroid/net/Uri;

    sget-object v14, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEAPPS:Landroid/net/Uri;

    :cond_0
    :goto_0
    const-string v4, "HomeScreenXmlBackup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "< makeTag_Home: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " >"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HomeScreenXmlBackup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    mIsCurrentDBHomeOnlyMode: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v7, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    :try_start_0
    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "pageOrder"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    const/16 v16, 0x3e8

    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v4, "pageOrder"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v16

    if-le v0, v4, :cond_1

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v12

    move-object v6, v11

    :goto_2
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const-string v4, "homeOnly"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-nez v4, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_HOMEONLY:Landroid/net/Uri;

    sget-object v14, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEONLY:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_4
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v4, "HomeScreenXmlBackup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pages : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",  orderFirstPage:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v14

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    if-nez v6, :cond_6

    const/4 v4, 0x1

    :try_start_3
    move-object/from16 v0, p3

    iput v4, v0, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->result:I

    const/4 v4, 0x1

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->err_code:I

    const-string v4, "HomeScreenXmlBackup"

    const-string v5, "fail to open Favorites cursor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_6
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v7, v1

    move-object/from16 v8, v18

    move/from16 v9, v16

    move-object/from16 v10, p2

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Ljava/util/Map;ILorg/xmlpull/v1/XmlSerializer;)V

    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_1
    move-exception v12

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->result:I

    const/4 v4, 0x3

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$Result;->err_code:I

    const-string v4, "HomeScreenXmlBackup"

    const-string v5, "There\'s no logs"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v4

    :goto_6
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    :catchall_1
    move-exception v4

    move-object v6, v11

    goto :goto_6
.end method

.method private static makeTag_HomeFolder(Landroid/content/ContentResolver;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const-string v1, "home"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-eqz v1, :cond_b

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEAPPS:Landroid/net/Uri;

    :cond_0
    :goto_0
    const-string v1, "hotseat"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-eqz v1, :cond_c

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEAPPS:Landroid/net/Uri;

    :cond_1
    :goto_1
    const/4 v10, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "container=? and containerId=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_17

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;-><init>(Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$1;)V

    const-string v1, "itemType"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v1, "iconType"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v17

    iput v0, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->folder_itemType:I

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->iconType:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v1

    move/from16 v0, v17

    if-ne v0, v1, :cond_d

    const-string v1, "favorite"

    iput-object v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->tag:Ljava/lang/String;

    :cond_2
    iget-object v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->tag:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "cellX"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v1, "cellY"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v1, "title"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v1, "intent"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v1, "iconPackage"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v1, "iconResource"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v1, "icon"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    if-eqz v16, :cond_3

    const/16 v25, 0x0

    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v25

    :try_start_2
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    :cond_4
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->packageName:Ljava/lang/String;

    :cond_5
    if-eqz v15, :cond_6

    iput-object v15, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->className:Ljava/lang/String;

    :cond_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->x:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->y:Ljava/lang/String;

    mul-int/lit8 v1, v8, 0x64

    add-int/2addr v1, v7

    iput v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->orderWeight:I

    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->title:Ljava/lang/String;

    :cond_7
    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v1

    move/from16 v0, v17

    if-ne v0, v1, :cond_9

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v22, :cond_8

    if-eqz v23, :cond_8

    move-object/from16 v0, v22

    iput-object v0, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->iconPackage:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->iconResource:Ljava/lang/String;

    move/from16 v0, v21

    iput v0, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->iconIndex:I

    :cond_8
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->uri:Ljava/lang/String;

    :cond_9
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v12

    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_3
    return-void

    :cond_b
    const-string v1, "homeOnly"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-nez v1, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEONLY:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_c
    const-string v1, "hotseat_homeOnly"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-nez v1, :cond_1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEONLY:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_d
    :try_start_4
    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v1

    move/from16 v0, v17

    if-ne v0, v1, :cond_2

    const-string v1, "shortcut"

    iput-object v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->tag:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :catch_1
    move-exception v12

    goto/16 :goto_2

    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_f

    new-instance v1, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$1;

    invoke-direct {v1}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$1;-><init>()V

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_f
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_10
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;

    iget-object v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->tag:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, "\n    "

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    iget-object v3, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    const-string v3, "packageName"

    iget-object v4, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    iget-object v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->className:Ljava/lang/String;

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    const-string v3, "className"

    iget-object v4, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->className:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12
    const/4 v1, 0x0

    const-string v3, "x"

    iget-object v4, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->x:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v3, "y"

    iget-object v4, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->y:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->title:Ljava/lang/String;

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    const-string v3, "title"

    iget-object v4, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->title:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13
    iget v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->folder_itemType:I

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_15

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->iconType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    const-string v3, "iconPackage"

    iget-object v4, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->iconPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v3, "iconResource"

    iget-object v4, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->iconResource:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14
    const/4 v1, 0x0

    const-string v3, "uri"

    iget-object v4, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->uri:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v1, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->iconIndex:I

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    const/4 v1, 0x0

    const-string v3, "icon"

    const/4 v4, 0x2

    invoke-static {v11, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15
    const/4 v1, 0x0

    iget-object v3, v14, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup$FolderItemClass;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    if-eqz v10, :cond_16

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v1

    :cond_17
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3
.end method

.method private static makeTag_Hotseat(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const-string v2, "hotseat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-eqz v2, :cond_3

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEAPPS:Landroid/net/Uri;

    :cond_0
    :goto_0
    const-string v2, "HomeScreenXmlBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "< makeTag_Hotseat: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " >"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HomeScreenXmlBackup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mIsCurrentDBHomeOnlyMode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeTag(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Ljava/util/Map;ILorg/xmlpull/v1/XmlSerializer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v2, "hotseat_homeOnly"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-nez v2, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEONLY:Landroid/net/Uri;

    goto/16 :goto_0

    :catch_0
    move-exception v10

    move-object v4, v9

    :goto_2
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v4, v9

    :goto_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method private static makeTag_PageSetting(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "PageCount"

    const-string v14, "ScreenIndex"

    const-string v13, "Rows"

    const-string v11, "Columns"

    const-string v3, "homeOnly"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_0
    const-string v3, "home"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-eqz v3, :cond_3

    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_HOMEAPPS:Landroid/net/Uri;

    :cond_1
    :goto_0
    const-string v3, "HomeScreenXmlBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "< makeTag_PageSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HomeScreenXmlBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mIsCurrentDBHomeOnlyMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :try_start_0
    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "\n"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v3, "homeOnly"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->mIsCurrentDBHomeOnlyMode:Z

    if-nez v3, :cond_1

    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_HOMEONLY:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_4
    const/4 v9, -0x1

    goto/16 :goto_1

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method private static makeXml(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {p0, v0, v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeDefaultWorkspace(Landroid/content/Context;Ljava/lang/StringBuffer;Lorg/xmlpull/v1/XmlSerializer;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "makeDefaultWorkspace() is failed. <br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Please check the dump with *#9900#. <br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {p0, v0, v2}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->makeDefaultAppOrder(Landroid/content/Context;Ljava/lang/StringBuffer;Lorg/xmlpull/v1/XmlSerializer;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "makeDefaultAppOrder() is failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Please check the dump with *#9900#. <br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method

.method private static nullCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static parseComponentName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aget-object v2, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method private static write2SDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 13

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v10, 0x400

    new-array v0, v10, [B

    const/4 v8, 0x1

    invoke-static {}, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->isSdMounted()Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "HomeScreenXmlBackup"

    const-string v11, "SDcard isn\'t mounted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v9

    :cond_0
    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "write to sdcard from"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ===> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-le v7, v9, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v5, v6

    move-object v2, v3

    :goto_2
    :try_start_3
    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fnfe : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_2
    :goto_5
    move v9, v8

    goto/16 :goto_0

    :cond_3
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    :goto_7
    if-eqz v3, :cond_8

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object v5, v6

    move-object v2, v3

    goto :goto_5

    :catch_1
    move-exception v1

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_2
    move-exception v1

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_3
    move-exception v1

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v1

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_5
    move-exception v1

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_6
    move-exception v1

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_7
    move-exception v1

    :goto_8
    const/4 v8, 0x0

    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_5

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    :goto_9
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :cond_5
    :goto_a
    if-eqz v2, :cond_2

    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_5

    :catch_8
    move-exception v1

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_9
    move-exception v1

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_a
    move-exception v1

    const-string v9, "HomeScreenXmlBackup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_0
    move-exception v9

    :goto_b
    if-eqz v5, :cond_6

    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :goto_c
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    :cond_6
    :goto_d
    if-eqz v2, :cond_7

    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    :cond_7
    :goto_e
    throw v9

    :catch_b
    move-exception v1

    const-string v10, "HomeScreenXmlBackup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_c
    move-exception v1

    const-string v10, "HomeScreenXmlBackup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_d
    move-exception v1

    const-string v10, "HomeScreenXmlBackup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catchall_1
    move-exception v9

    move-object v2, v3

    goto :goto_b

    :catchall_2
    move-exception v9

    move-object v5, v6

    move-object v2, v3

    goto :goto_b

    :catch_e
    move-exception v1

    move-object v2, v3

    goto/16 :goto_8

    :catch_f
    move-exception v1

    move-object v5, v6

    move-object v2, v3

    goto/16 :goto_8

    :catch_10
    move-exception v4

    goto/16 :goto_2

    :catch_11
    move-exception v4

    move-object v2, v3

    goto/16 :goto_2

    :cond_8
    move-object v5, v6

    move-object v2, v3

    goto/16 :goto_5
.end method

.method private static write2Xml(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "ACTION"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "onReceive REQUEST_BACKUP_HOMESCREEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "com.sec.android.intent.action.REQUEST_RESTORE_HOMESCREEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/sec/android/app/launcher/BackupRestore/XmlBackup;->DEBUGGABLE:Z

    if-eqz v3, :cond_3

    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "onReceive REQUEST_RESTORE_HOMESCREEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "onReceive Action value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
