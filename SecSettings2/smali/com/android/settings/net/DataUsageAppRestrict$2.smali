.class Lcom/android/settings/net/DataUsageAppRestrict$2;
.super Ljava/lang/Object;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-virtual {v1}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings/net/DataUsageAppRestrict;->access$300(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    invoke-static {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$200(Lcom/android/settings/net/DataUsageAppRestrict;)Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->bindDataStats(Landroid/net/NetworkStats;)V

    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-virtual {v0, p2}, Lcom/android/settings/net/DataUsageAppRestrict;->UpdateNetworkHistoricalBackgroundData(Landroid/net/NetworkStats;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/net/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/net/DataUsageAppRestrict$2;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$2;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    invoke-static {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$200(Lcom/android/settings/net/DataUsageAppRestrict;)Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataResetPreviousData()V

    return-void
.end method
