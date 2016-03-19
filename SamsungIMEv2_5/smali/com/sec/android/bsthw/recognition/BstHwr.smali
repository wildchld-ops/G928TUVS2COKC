.class public Lcom/sec/android/bsthw/recognition/BstHwr;
.super Ljava/lang/Object;
.source "BstHwr.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BstHwr"

.field private static mIsHandwriteInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/bsthw/recognition/BstHwr;->mIsHandwriteInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hwCheckEngineWithDb(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/sec/android/bsthw/recognition/BstHwr;->nativeHWGetEngineVer()J

    move-result-wide v2

    invoke-static {p0}, Lcom/sec/android/bsthw/recognition/BstHwr;->nativeHwrGetDbVer(Ljava/lang/String;)J

    move-result-wide v0

    const-string v4, "BstHwr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "engineVer ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dbVer ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static hwLoadDB(Landroid/content/res/AssetManager;Ljava/lang/String;Z)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {p0, p1, v1}, Lcom/sec/android/bsthw/recognition/BstHwr;->nativeHWLoadDB(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/sec/android/bsthw/recognition/BstHwr;->mIsHandwriteInit:Z

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hwRecogChar([II[CI[CI)I
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/sec/android/bsthw/recognition/BstHwr;->nativeHWRecogChar([II[CI[CI)I

    move-result v0

    return v0
.end method

.method public static hwRecogText([IIIIII[C[CI)I
    .locals 1

    invoke-static/range {p0 .. p8}, Lcom/sec/android/bsthw/recognition/BstHwr;->nativeHWRecogText([IIIIII[C[CI)I

    move-result v0

    return v0
.end method

.method public static hwReleaseDB()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/bsthw/recognition/BstHwr;->mIsHandwriteInit:Z

    invoke-static {}, Lcom/sec/android/bsthw/recognition/BstHwr;->nativeHWReleaseDB()V

    return-void
.end method

.method public static hwSetRange(CLjava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/bsthw/recognition/BstHwr;->nativeHWSetRange(CLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static hwSetRect(III)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/android/bsthw/recognition/BstHwr;->nativeHWSetRect(III)I

    move-result v0

    return v0
.end method

.method public static isHandwriteInit()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/bsthw/recognition/BstHwr;->mIsHandwriteInit:Z

    return v0
.end method

.method static native nativeHWGetEngineVer()J
.end method

.method static native nativeHWLoadDB(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
.end method

.method public static native nativeHWRStopRecog()I
.end method

.method static native nativeHWRecogChar([II[CI[CI)I
.end method

.method static native nativeHWRecogText([IIIIII[C[CI)I
.end method

.method static native nativeHWReleaseDB()V
.end method

.method static native nativeHWSetRange(CLjava/lang/String;)I
.end method

.method static native nativeHWSetRect(III)I
.end method

.method static native nativeHwrGetDbVer(Ljava/lang/String;)J
.end method
