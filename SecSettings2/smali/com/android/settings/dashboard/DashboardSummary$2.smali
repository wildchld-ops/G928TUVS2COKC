.class Lcom/android/settings/dashboard/DashboardSummary$2;
.super Landroid/database/ContentObserver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->access$200(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardTileView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mPrevTileView:Lcom/android/settings/dashboard/DashboardTileView;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->access$200(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardTileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/32 v2, 0x7f1005ab

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->access$300(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    # getter for: Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->access$300(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary;->redrawDashboard()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$2;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary;->redrawFavorite()V

    goto :goto_0
.end method
