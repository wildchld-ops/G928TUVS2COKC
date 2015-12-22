.class public Lcom/android/incallui/secutils/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secutils/DebugUtils$FileManager;,
        Lcom/android/incallui/secutils/DebugUtils$DebugHolder;
    }
.end annotation


# static fields
.field private static AccumulatedCount:I

.field private static final DBG:Z

.field private static DEFAULT_HEIGHT:I

.field private static DEFAULT_WIDTH:I

.field private static SCREEN_SIZE_LEVEL:I

.field private static filemanager:Lcom/android/incallui/secutils/DebugUtils$FileManager;

.field private static mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

.field private static mDebugLog:Ljava/lang/String;

.field private static mDebugScreenLayout:Landroid/widget/FrameLayout;

.field private static mInfoLog:Ljava/lang/String;

.field private static mParent:Landroid/view/ViewGroup;

.field private static nLogLine:I

.field private static sInstance:Lcom/android/incallui/secutils/DebugUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebugListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/secutils/DebugUtils;->DBG:Z

    sput-object v2, Lcom/android/incallui/secutils/DebugUtils;->sInstance:Lcom/android/incallui/secutils/DebugUtils;

    sput-object v2, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    sput v3, Lcom/android/incallui/secutils/DebugUtils;->nLogLine:I

    const-string v0, "NO LOG"

    sput-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugLog:Ljava/lang/String;

    const-string v0, "NONE"

    sput-object v0, Lcom/android/incallui/secutils/DebugUtils;->mInfoLog:Ljava/lang/String;

    sput v4, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_WIDTH:I

    sput v4, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_HEIGHT:I

    sput-object v2, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    sput-object v2, Lcom/android/incallui/secutils/DebugUtils;->mParent:Landroid/view/ViewGroup;

    const/16 v0, 0xa

    sput v0, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    sput v3, Lcom/android/incallui/secutils/DebugUtils;->AccumulatedCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secutils/DebugUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/incallui/secutils/DebugUtils$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secutils/DebugUtils$1;-><init>(Lcom/android/incallui/secutils/DebugUtils;)V

    iput-object v0, p0, Lcom/android/incallui/secutils/DebugUtils;->mDebugListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/incallui/secutils/DebugUtils$FileManager;

    invoke-direct {v0}, Lcom/android/incallui/secutils/DebugUtils$FileManager;-><init>()V

    sput-object v0, Lcom/android/incallui/secutils/DebugUtils;->filemanager:Lcom/android/incallui/secutils/DebugUtils$FileManager;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->getTime_Type2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearLog()V
    .locals 2

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->filemanager:Lcom/android/incallui/secutils/DebugUtils$FileManager;

    if-eqz v0, :cond_0

    const-string v0, "NO LOG"

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->filemanager:Lcom/android/incallui/secutils/DebugUtils$FileManager;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secutils/DebugUtils$FileManager;->saveFile(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->filemanager:Lcom/android/incallui/secutils/DebugUtils$FileManager;

    const-string v1, "DebugLog.log"

    invoke-virtual {v0, v1}, Lcom/android/incallui/secutils/DebugUtils$FileManager;->deleteFile(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->updateScreen()V

    return-void
.end method

.method public static createHolder()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/secutils/DebugUtils;->showView(Z)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_clear:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_clear:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_show:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_show:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_plus:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_plus:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_minus:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_minus:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sput-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    :cond_0
    new-instance v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    invoke-direct {v0}, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;-><init>()V

    sput-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/secutils/DebugUtils;
    .locals 1

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->sInstance:Lcom/android/incallui/secutils/DebugUtils;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->init()Lcom/android/incallui/secutils/DebugUtils;

    :cond_0
    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->sInstance:Lcom/android/incallui/secutils/DebugUtils;

    return-object v0
.end method

.method public static getLog()Ljava/lang/String;
    .locals 4

    const-string v1, "NO LOG"

    sget-object v2, Lcom/android/incallui/secutils/DebugUtils;->filemanager:Lcom/android/incallui/secutils/DebugUtils$FileManager;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/secutils/DebugUtils;->filemanager:Lcom/android/incallui/secutils/DebugUtils$FileManager;

    const-string v3, "DebugLog.log"

    invoke-virtual {v2, v3}, Lcom/android/incallui/secutils/DebugUtils$FileManager;->createFile(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v2, "/sdcard/IMS_DEBUG/DebugLog.log"

    invoke-static {v2}, Lcom/android/incallui/secutils/DebugUtils;->getLogFromFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLogFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v7, 0x20000

    new-array v0, v7, [B

    const-string v5, "NO LOG"

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    :cond_2
    :goto_0
    if-lez v4, :cond_3

    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v4, -0x1

    invoke-direct {v5, v0, v7, v8}, Ljava/lang/String;-><init>([BII)V

    :cond_3
    return-object v5

    :catch_0
    move-exception v7

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    sget-boolean v7, Lcom/android/incallui/secutils/DebugUtils;->DBG:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLogFromFile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/secutils/DebugUtils;->log(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v7

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_3
    throw v7

    :catch_3
    move-exception v8

    goto :goto_3

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private static getTime_Type2()Ljava/lang/String;
    .locals 12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "000"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xe

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static init()Lcom/android/incallui/secutils/DebugUtils;
    .locals 4

    const-class v1, Lcom/android/incallui/secutils/DebugUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->sInstance:Lcom/android/incallui/secutils/DebugUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/secutils/DebugUtils;

    invoke-direct {v0}, Lcom/android/incallui/secutils/DebugUtils;-><init>()V

    sput-object v0, Lcom/android/incallui/secutils/DebugUtils;->sInstance:Lcom/android/incallui/secutils/DebugUtils;

    :goto_0
    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->sInstance:Lcom/android/incallui/secutils/DebugUtils;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "[DebugUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/secutils/DebugUtils;->sInstance:Lcom/android/incallui/secutils/DebugUtils;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[DebugUtils]"

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setInfoDefaultText()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_WIDTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_WIDTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secutils/DebugUtils;->mInfoLog:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mInfoLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secutils/DebugUtils;->mInfoLog:Ljava/lang/String;

    return-void
.end method

.method public static setScreen()V
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_WIDTH:I

    sget v2, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget v1, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_HEIGHT:I

    sget v2, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->setInfoDefaultText()V

    return-void
.end method

.method public static setScreen(I)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_WIDTH:I

    mul-int/2addr v1, p0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget v1, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_HEIGHT:I

    mul-int/2addr v1, p0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->setInfoDefaultText()V

    return-void
.end method

.method public static showButton(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->setScreen()V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_clear:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_plus:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_minus:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/incallui/secutils/DebugUtils;->setScreen(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_clear:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_plus:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_minus:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public static showView(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mLog_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mInfo_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mLog_view:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mInfo_view:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static updateScreen()V
    .locals 2

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->getLog()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugLog:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mLog_view:Landroid/widget/TextView;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mInfo_view:Landroid/widget/TextView;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mInfoLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public createDebugScreen(ILandroid/app/Activity;)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    sput v2, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_WIDTH:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    sput v2, Lcom/android/incallui/secutils/DebugUtils;->DEFAULT_HEIGHT:I

    :cond_1
    invoke-virtual {p2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/secutils/DebugUtils;->createDebugScreen(Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public createDebugScreen(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p1, Lcom/android/incallui/secutils/DebugUtils;->mParent:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/incallui/secutils/DebugUtils;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sput-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mParent:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/incallui/secutils/DebugUtils;->setScreen(I)V

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->createHolder()V

    sget-object v2, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f10006d

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_show:Landroid/widget/Button;

    sget-object v2, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f100072

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_clear:Landroid/widget/Button;

    sget-object v2, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f100070

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_plus:Landroid/widget/Button;

    sget-object v2, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f100071

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_minus:Landroid/widget/Button;

    sget-object v2, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f100075

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mLog_view:Landroid/widget/TextView;

    sget-object v2, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugScreenLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f100073

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mInfo_view:Landroid/widget/TextView;

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v1, v1, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_show:Landroid/widget/Button;

    const-string v2, "debug"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v1, v1, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_show:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/secutils/DebugUtils;->mDebugListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v1, v1, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_clear:Landroid/widget/Button;

    const-string v2, "clear"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v1, v1, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_clear:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/secutils/DebugUtils;->mDebugListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v1, v1, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_plus:Landroid/widget/Button;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v1, v1, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_plus:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/secutils/DebugUtils;->mDebugListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v1, v1, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_minus:Landroid/widget/Button;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v1, v1, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_minus:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/secutils/DebugUtils;->mDebugListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v4}, Lcom/android/incallui/secutils/DebugUtils;->showButton(Z)V

    invoke-static {v4}, Lcom/android/incallui/secutils/DebugUtils;->showView(Z)V

    sget-object v1, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v1, v1, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mBtn_show:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->updateScreen()V

    goto/16 :goto_0
.end method

.method public decreaseScreen()V
    .locals 2

    sget v0, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->setScreen()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->updateScreen()V

    return-void
.end method

.method public increaseScreen()V
    .locals 2

    sget v0, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/incallui/secutils/DebugUtils;->SCREEN_SIZE_LEVEL:I

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->setScreen()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->updateScreen()V

    return-void
.end method

.method public toggleDebugScreen()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/incallui/secutils/DebugUtils;->mDebugHolder:Lcom/android/incallui/secutils/DebugUtils$DebugHolder;

    iget-object v0, v0, Lcom/android/incallui/secutils/DebugUtils$DebugHolder;->mLog_view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/secutils/DebugUtils;->updateScreen()V

    invoke-static {v3}, Lcom/android/incallui/secutils/DebugUtils;->showView(Z)V

    invoke-static {v3}, Lcom/android/incallui/secutils/DebugUtils;->showButton(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/android/incallui/secutils/DebugUtils;->showView(Z)V

    invoke-static {v2}, Lcom/android/incallui/secutils/DebugUtils;->showButton(Z)V

    goto :goto_0
.end method
