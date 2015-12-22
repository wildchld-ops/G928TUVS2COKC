.class Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;
.super Ljava/lang/Object;
.source "CocktailBarSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    # getter for: Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->access$000(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    # invokes: Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailListLocked()Z
    invoke-static {v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->access$100(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
