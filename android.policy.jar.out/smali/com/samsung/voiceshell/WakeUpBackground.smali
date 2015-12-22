.class public Lcom/samsung/voiceshell/WakeUpBackground;
.super Ljava/lang/Object;
.source "WakeUpBackground.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeUpBackground"

.field private static mIsRunning:Z

.field private static mProcess:Lcom/samsung/voiceshell/BackgroundProcess;

.field private static strFeature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/data/data/com.vlingo.midas/Adapted.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->strFeature:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->mProcess:Lcom/samsung/voiceshell/BackgroundProcess;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetFeature(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sput-object p1, Lcom/samsung/voiceshell/WakeUpBackground;->strFeature:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "WakeUpBackground"

    const-string v2, "SetFeature: don\'t set feature while running"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetObject(Lcom/samsung/voiceshell/BackgroundProcess;)V
    .locals 0

    sput-object p1, Lcom/samsung/voiceshell/WakeUpBackground;->mProcess:Lcom/samsung/voiceshell/BackgroundProcess;

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->strFeature:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    sget-boolean v0, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    if-ne v0, v2, :cond_1

    :cond_0
    const-string v0, "WakeUpBackground"

    const-string v1, "Don\'t do BackgroundProcess while running or in case adapted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, "WakeUpBackground"

    const-string v1, "Do BackgroundProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    const-string v0, "WakeUpBackground"

    const-string v1, "Start BackgroundProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->mProcess:Lcom/samsung/voiceshell/BackgroundProcess;

    invoke-interface {v0}, Lcom/samsung/voiceshell/BackgroundProcess;->OnBgProcess()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "WakeUpBackground"

    const-string v1, "BackgroundProcess was success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/voiceshell/WakeUpBackground;->strFeature:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/voiceshell/WakeUpUtils;->CreateFile(Ljava/lang/String;)Z

    :goto_1
    const-string v0, "WakeUpBackground"

    const-string v1, "End BackgroundProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/voiceshell/WakeUpBackground;->mIsRunning:Z

    goto :goto_0

    :cond_2
    const-string v0, "WakeUpBackground"

    const-string v1, "BackgroundProcess was failed. don\'t create feature"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
