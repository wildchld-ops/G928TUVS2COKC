.class Lcom/android/systemui/doze/DozeService$2;
.super Lcom/android/systemui/doze/DozeService$ProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->requestPulse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;

.field final synthetic val$nonBlocking:Z

.field final synthetic val$reason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;JIZ)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    iput-wide p2, p0, Lcom/android/systemui/doze/DozeService$2;->val$start:J

    iput p4, p0, Lcom/android/systemui/doze/DozeService$2;->val$reason:I

    iput-boolean p5, p0, Lcom/android/systemui/doze/DozeService$2;->val$nonBlocking:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService$1;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/systemui/doze/DozeService$2;->val$start:J

    sub-long v4, v0, v4

    iget v6, p0, Lcom/android/systemui/doze/DozeService$2;->val$reason:I

    invoke-static {v2, v4, v5, v6}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(ZJI)V

    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService$2;->val$nonBlocking:Z

    if-eqz v4, :cond_1

    :goto_1
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # setter for: Lcom/android/systemui/doze/DozeService;->mPulsing:Z
    invoke-static {v4, v3}, Lcom/android/systemui/doze/DozeService;->access$202(Lcom/android/systemui/doze/DozeService;Z)Z

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/systemui/doze/DozeService;->access$300(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    iget v4, p0, Lcom/android/systemui/doze/DozeService$2;->val$reason:I

    # invokes: Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V
    invoke-static {v3, v4}, Lcom/android/systemui/doze/DozeService;->access$400(Lcom/android/systemui/doze/DozeService;I)V

    goto :goto_1
.end method
