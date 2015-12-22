.class Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$1;
.super Ljava/lang/Object;
.source "NetworkStatsViewr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mActivated:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$000(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mAttached:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$100(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->updateStats()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$200(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->invalidate()V

    :cond_0
    return-void
.end method
