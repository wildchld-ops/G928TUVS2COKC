.class Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
.super Ljava/lang/Object;
.source "PrioritizeLRUProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PrioritizeLRUProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LRUStats"
.end annotation


# instance fields
.field basePackage:I

.field iLruWeight:I

.field launchCount:I

.field final synthetic this$0:Lcom/android/server/am/PrioritizeLRUProcess;


# direct methods
.method constructor <init>(Lcom/android/server/am/PrioritizeLRUProcess;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->this$0:Lcom/android/server/am/PrioritizeLRUProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->basePackage:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->iLruWeight:I

    return-void
.end method


# virtual methods
.method public getBasePackage()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->basePackage:I

    return v0
.end method

.method public getILruWeight()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->iLruWeight:I

    return v0
.end method

.method public getLaunchCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    return v0
.end method

.method public setBasePackage(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->basePackage:I

    return-void
.end method

.method public setILruWeight()V
    .locals 0

    return-void
.end method

.method public setILruWeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->iLruWeight:I

    return-void
.end method

.method public setLaunchCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    invoke-virtual {p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setILruWeight()V

    return-void
.end method

.method public updateLaunchCount()V
    .locals 2

    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->basePackage:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    # setter for: Lcom/android/server/am/PrioritizeLRUProcess;->doNormalize:Z
    invoke-static {v0}, Lcom/android/server/am/PrioritizeLRUProcess;->access$002(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setILruWeight()V

    return-void
.end method
