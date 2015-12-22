.class public Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;
.super Ljava/lang/Object;
.source "SpamCallInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/chn/SpamCallInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheEntry"
.end annotation


# instance fields
.field public final SpamCount:I

.field public final SpamName:Ljava/lang/String;

.field public final SpamNumber:Ljava/lang/String;

.field public final SpamTagType:I

.field public isReport:Z

.field public final isSpam:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamNumber:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamCount:I

    iput p4, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamTagType:I

    iput-boolean p5, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->isSpam:Z

    iput-boolean p6, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->isReport:Z

    return-void
.end method


# virtual methods
.method public getIsReport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->isReport:Z

    return v0
.end method

.method public setIsReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->isReport:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpamCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SpamTagType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->SpamTagType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isSpam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->isSpam:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isReport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/telecom/operator/chn/SpamCallInfoCache$CacheEntry;->isReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
