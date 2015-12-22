.class public Lcom/ficeto/customsettings/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bootloader()V
    .locals 1

    const-string v0, "bootloader"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->rebootPhone(Ljava/lang/String;)V

    return-void
.end method

.method public static bootloader(Landroid/content/Context;)V
    .locals 1

    const-string v0, "bootloader"

    invoke-static {p0, v0}, Lcom/ficeto/customsettings/Tools;->rebootPhone(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static dispatch(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    aget-object v0, p1, v2

    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/ficeto/customsettings/Tools;->reboot(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p1, v2

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/ficeto/customsettings/Tools;->recovery(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    aget-object v0, p1, v2

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/ficeto/customsettings/Tools;->download(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    aget-object v0, p1, v2

    const-string v1, "bootloader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/ficeto/customsettings/Tools;->bootloader(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    aget-object v0, p1, v2

    const-string v1, "hotboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->hotboot()V

    goto :goto_0

    :cond_5
    aget-object v0, p1, v2

    const-string v1, "restartsystemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootSystemUi()V

    goto :goto_0

    :cond_6
    aget-object v0, p1, v2

    const-string v1, "restartphone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootPhoneApp()V

    goto :goto_0

    :cond_7
    aget-object v0, p1, v2

    const-string v1, "restartlauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootLauncher()V

    goto :goto_0

    :cond_8
    aget-object v0, p1, v2

    const-string v1, "restartincallui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootInCallUI()V

    goto :goto_0

    :cond_9
    aget-object v0, p1, v2

    const-string v1, "restartkb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootSamsungIME()V

    goto :goto_0

    :cond_a
    aget-object v0, p1, v2

    const-string v1, "shell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const-string v0, "Tools"

    const-string v1, "Not enough parameters given for SHELL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static dispatch([Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    aget-object v0, p0, v2

    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->reboot()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p0, v2

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->recovery()V

    goto :goto_0

    :cond_2
    aget-object v0, p0, v2

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->download()V

    goto :goto_0

    :cond_3
    aget-object v0, p0, v2

    const-string v1, "bootloader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->bootloader()V

    goto :goto_0

    :cond_4
    aget-object v0, p0, v2

    const-string v1, "hotboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->hotboot()V

    goto :goto_0

    :cond_5
    aget-object v0, p0, v2

    const-string v1, "restartsystemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootSystemUi()V

    goto :goto_0

    :cond_6
    aget-object v0, p0, v2

    const-string v1, "restartphone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootPhoneApp()V

    goto :goto_0

    :cond_7
    aget-object v0, p0, v2

    const-string v1, "restartlauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootLauncher()V

    goto :goto_0

    :cond_8
    aget-object v0, p0, v2

    const-string v1, "restartincallui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootInCallUI()V

    goto :goto_0

    :cond_9
    aget-object v0, p0, v2

    const-string v1, "restartkb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->rebootSamsungIME()V

    goto :goto_0

    :cond_a
    aget-object v0, p0, v2

    const-string v1, "shell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const-string v0, "Tools"

    const-string v1, "Not enough parameters given for SHELL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static download()V
    .locals 1

    const-string v0, "download"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->rebootPhone(Ljava/lang/String;)V

    return-void
.end method

.method public static download(Landroid/content/Context;)V
    .locals 1

    const-string v0, "download"

    invoke-static {p0, v0}, Lcom/ficeto/customsettings/Tools;->rebootPhone(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getSdCardPath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSuBin()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/xbin"

    const-string v2, "su"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/system/xbin/su"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "su"

    goto :goto_0

    :cond_1
    const-string v0, "sh"

    goto :goto_0
.end method

.method public static hotboot()V
    .locals 1

    const-string v0, "setprop ctl.restart surfaceflinger;setprop ctl.restart zygote"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static isUiThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reboot()V
    .locals 1

    const-string v0, "now"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->rebootPhone(Ljava/lang/String;)V

    return-void
.end method

.method public static reboot(Landroid/content/Context;)V
    .locals 1

    const-string v0, "now"

    invoke-static {p0, v0}, Lcom/ficeto/customsettings/Tools;->rebootPhone(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static rebootInCallUI()V
    .locals 1

    const-string v0, "pkill -TERM -f com.android.incallui"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static rebootLauncher()V
    .locals 1

    const-string v0, "pkill -TERM -f com.sec.android.app.launcher"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static rebootPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Tools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reboot \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reboot "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private static rebootPhone(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reboot "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static rebootPhoneApp()V
    .locals 1

    const-string v0, "pkill -TERM -f com.android.phone"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static rebootSamsungIME()V
    .locals 1

    const-string v0, "pkill -TERM -f com.sec.android.inputmethod"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static rebootSystemUi()V
    .locals 1

    const-string v0, "pkill -TERM -f com.android.systemui"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->shell(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static recovery()V
    .locals 1

    const-string v0, "recovery"

    invoke-static {v0}, Lcom/ficeto/customsettings/Tools;->rebootPhone(Ljava/lang/String;)V

    return-void
.end method

.method public static recovery(Landroid/content/Context;)V
    .locals 1

    const-string v0, "recovery"

    invoke-static {p0, v0}, Lcom/ficeto/customsettings/Tools;->rebootPhone(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static shell(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->getSuBin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/ficeto/customsettings/Tools;->system(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "out"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static system(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12

    invoke-static {}, Lcom/ficeto/customsettings/Tools;->isUiThread()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "Application attempted to run a shell command from the main thread"

    invoke-static {p0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v10, "START"

    invoke-static {p0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    const-string v10, "exit\n"

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v10

    const/16 v11, 0xff

    if-ne v10, v11, :cond_1

    const-string v10, "SU was probably denied! Exit value is 255"

    invoke-static {p0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "SU was probably denied! Exit value is 255"

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v10

    if-nez v10, :cond_3

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-lez v10, :cond_2

    const/4 v9, 0x0

    :cond_2
    :goto_2
    const-string v10, "END"

    invoke-static {p0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v10, "success"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "cmd"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "binary"

    invoke-virtual {v6, v10, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "out"

    invoke-virtual {v6, v10, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v10, "error"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v6

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "IOException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "IOException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "InterruptedException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "InterruptedException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method
