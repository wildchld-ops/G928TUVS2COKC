.class Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;
.super Ljava/lang/Object;
.source "CocktailBarFeedsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedsListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->this$0:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->pid:I

    iput p5, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->this$0:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$100(Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->this$0:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->mFeedsListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$100(Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CocktailBarFeedsListener: component:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") pid:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") uid:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFeedsUpdated(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onFeedsUpdated : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager$FeedsListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback;->onFeedsUpdated(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onCocktailBarStateChanged : RemoteException : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
