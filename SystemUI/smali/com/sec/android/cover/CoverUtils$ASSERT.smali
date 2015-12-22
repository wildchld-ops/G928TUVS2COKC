.class public Lcom/sec/android/cover/CoverUtils$ASSERT;
.super Ljava/lang/Object;
.source "CoverUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/CoverUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASSERT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/CoverUtils$ASSERT$AssertionFailedException;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mIsEngMode:Z

.field private static mIsMobileCareInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/cover/CoverUtils$ASSERT;->mContext:Landroid/content/Context;

    sput-boolean v1, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsEngMode:Z

    sput-boolean v1, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsMobileCareInstalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertionFailed(Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_1

    const-string v1, "CoverUtils"

    const-string v2, "Assertion failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    new-instance v0, Lcom/sec/android/cover/CoverUtils$ASSERT$AssertionFailedException;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverUtils$ASSERT$AssertionFailedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/cover/CoverUtils$ASSERT$AssertionFailedException;->printStackTrace()V

    sget-boolean v1, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsMobileCareInstalled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/android/cover/CoverUtils$ASSERT;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->requestDumpUpload(Landroid/content/Context;)Z

    :cond_0
    return-void

    :cond_1
    const-string v1, "CoverUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assertion failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/cover/CoverUtils$ASSERT;->e(ZLjava/lang/String;)V

    return-void
.end method

.method public static e(ZLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/cover/CoverUtils$ASSERT;->assertionFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverUtils$ASSERT;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.mobilecare"

    invoke-static {p0, v0}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsMobileCareInstalled:Z

    const-string v0, "eng"

    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsEngMode:Z

    const-string v0, "CoverUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : Eng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsEngMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MC Installed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsMobileCareInstalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "The object is null!"

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils$ASSERT;->assertionFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
