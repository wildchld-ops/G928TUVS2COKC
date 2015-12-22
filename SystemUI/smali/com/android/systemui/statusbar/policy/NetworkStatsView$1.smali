.class Lcom/android/systemui/statusbar/policy/NetworkStatsView$1;
.super Ljava/lang/Object;
.source "NetworkStatsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkStatsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mActivated:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$000(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->mAttached:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$100(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkStatsView;->updateStats()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->access$200(Lcom/android/systemui/statusbar/policy/NetworkStatsView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsView;->invalidate()V

    :cond_0
    return-void
.end method
