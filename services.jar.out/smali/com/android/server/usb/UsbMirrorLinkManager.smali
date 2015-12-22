.class public Lcom/android/server/usb/UsbMirrorLinkManager;
.super Ljava/lang/Object;
.source "UsbMirrorLinkManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MIRRORLINK_START_ACTION:Ljava/lang/String; = "com.samsung.android.mirrorlink.action.ML_UEVENT"

.field private static final NCM_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_ncm"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DELAY:I = 0x5dc


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMirrorLinkManager$1;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/misc/usb_ncm"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public systemReady()V
    .locals 13

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v11, ""

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v11, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v11, -0x1

    if-eq v0, v11, :cond_2

    int-to-char v11, v0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_1
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v12, "FileNotFoundException for not opening usb file"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-direct {v9, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "major"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v11, "0"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "minor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v11, "1"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "systemReady terminal_version : major 0 minor 1"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "mirrorlink"

    const-string v12, "START"

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_3
    const/4 v9, 0x0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    :cond_1
    :goto_4
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_5
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v12, "IOException for not opening usb file"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "minor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "systemReady terminal_version : major 1 minor"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "mirrorlink"

    const-string v12, "START"

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_4
    sget-object v11, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "systemReady major version is not present"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v1

    goto/16 :goto_1
.end method
