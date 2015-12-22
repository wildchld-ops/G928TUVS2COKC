.class public Lcom/android/systemui/recents/model/RecentsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecentsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public computeComponentsRemoved(Ljava/util/List;Ljava/lang/String;I)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    if-ne v5, p3, :cond_0

    iget-object v5, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v5, v0, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    invoke-interface {v1, p0, p1, v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;->onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    invoke-interface {v1, p0, p1, v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;->onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V
    .locals 4

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
