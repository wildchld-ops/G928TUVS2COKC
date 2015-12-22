.class Lcom/android/settings/net/DataUsageAppRestrict$4;
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
        "Landroid/net/NetworkStatsHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

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
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/net/AppRestictDataLoader;

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-virtual {v1}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings/net/DataUsageAppRestrict;->access$300(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/net/AppRestictDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStatsHistory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;",
            "Landroid/net/NetworkStatsHistory;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mBackGroundDataMap:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$400(Lcom/android/settings/net/DataUsageAppRestrict;)Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast p1, Lcom/android/settings/net/AppRestictDataLoader;

    iget v1, p1, Lcom/android/settings/net/AppRestictDataLoader;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$4;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # invokes: Lcom/android/settings/net/DataUsageAppRestrict;->checkLoadedAppNum()V
    invoke-static {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$500(Lcom/android/settings/net/DataUsageAppRestrict;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/net/DataUsageAppRestrict$4;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStatsHistory;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
