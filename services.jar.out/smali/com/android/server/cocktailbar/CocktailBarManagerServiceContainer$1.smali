.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitched(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

.field final synthetic val$userIdF:I


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iput p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->val$userIdF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$102(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.samsung.android.app.cocktailbarservice"

    const-string v4, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->val$userIdF:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->val$userIdF:I

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->ensureGroupStateLoaded(I)V
    invoke-static {v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->val$userIdF:I

    invoke-virtual {v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    aget v3, v1, v0

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->initialize()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
