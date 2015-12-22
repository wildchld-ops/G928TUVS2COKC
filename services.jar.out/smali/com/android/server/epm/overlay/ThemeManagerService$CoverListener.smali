.class Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "ThemeCoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachedaaa"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "ThemeCoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackageList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2000(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "attached"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mActiveMasterPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackageList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2000(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.scover.themecenter.COVER_DETACHED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "packageName"

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mIsCoverAttached:Z
    invoke-static {v2, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2202(Lcom/android/server/epm/overlay/ThemeManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$CoverListener;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 0

    return-void
.end method
