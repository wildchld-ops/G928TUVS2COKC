.class Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;
.super Landroid/database/ContentObserver;
.source "PrivateAuthLockMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthLockObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;Landroid/os/Handler;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object v1, p1, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "missing_phone_lock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    iget-object v2, v2, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    invoke-interface {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;->getCurrentModeId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->renewMode(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    # getter for: Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->DEBUG:Z
    invoke-static {}, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AuthLockObserver : onChange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->getModeId()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    iget-object v2, v2, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    invoke-interface {v2, v3, v4}, Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;->onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    iget-object v2, v2, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;->mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;->this$0:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    invoke-interface {v2, v3, v4}, Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;->onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_0
.end method
