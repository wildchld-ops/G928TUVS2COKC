.class public Landroid/provider/Settings$LogMsg;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogMsg"
.end annotation


# static fields
.field private static final DEVICE_PROVISION_LOG_FILE_PATH:Ljava/lang/String; = "/data/log/provisioned.txt"

.field private static final KEY_SETTINGS_DB_CALLSTACK_KEY_LIST:Ljava/lang/String; = "settings_db_callstack_key_list"

.field private static final MAX_SIZE_OF_LOG_FILE:J = 0x100000L

.field private static final SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String;

.field private static final SETTINGS_DB_KEY_DEFAULT:Ljava/lang/String; = ";"

.field private static SETTINGS_DB_KEY_LIST:Ljava/lang/String; = null

.field private static final SETTINGS_DB_KEY_UNSETTED:Ljava/lang/String; = "unsetted"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log_settings_db_callstack/SettingsDBCallStackLog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v0, "unsetted"

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static checkToMakeCallStackLog(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    const-string/jumbo v2, "unsetted"

    sget-object v3, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "settings_db_callstack_key_list"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ";"

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCallStackDBKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    return-object v0
.end method

.method public static setCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static writeCallStackLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/io/PrintStream;

    invoke-direct {v9, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v10, "Settings"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v8, ""

    const-string v10, "device_provisioned"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v8, "/data/log/provisioned.txt"

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v11, "UTF-8"

    invoke-direct {v6, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6, v7}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    move-object v5, v6

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_5
    sget-object v8, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v10

    :goto_3
    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v10

    goto :goto_2

    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_5
    throw v10

    :catch_3
    move-exception v11

    goto :goto_5

    :catchall_1
    move-exception v10

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v10

    move-object v5, v6

    goto :goto_4

    :catch_4
    move-exception v10

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v10

    move-object v5, v6

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method
