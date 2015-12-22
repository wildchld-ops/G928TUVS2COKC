.class public Lcom/android/server/pm/PackageManagerException;
.super Ljava/lang/Exception;
.source "PackageManagerException.java"


# instance fields
.field public final error:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p3, p1, p2}, Lcom/android/server/pm/PackageManagerException;->setLastScanError(Lcom/android/server/pm/PackageSetting;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p4, p1, p2}, Lcom/android/server/pm/PackageManagerException;->setLastScanError(Lcom/android/server/pm/PackageSetting;ILjava/lang/String;)V

    return-void
.end method

.method public static from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    iget v1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static setLastScanError(Lcom/android/server/pm/PackageSetting;ILjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    iput p1, p0, Lcom/android/server/pm/PackageSetting;->mLastScanError:I

    iput-object p2, p0, Lcom/android/server/pm/PackageSetting;->mLastScanErrorMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method
