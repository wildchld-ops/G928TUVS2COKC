.class public Lcom/myscript/atk/rmc/RMLauncher;
.super Ljava/lang/Object;
.source "RMLauncher.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/myscript/atk/rmc/RMLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/myscript/atk/rmc/RMLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/rmc/RMLauncher;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public launchCancelByIntent(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/myscript/atk/rmc/RMLauncher;->TAG:Ljava/lang/String;

    const-string v2, "> launchCancelByIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/myscript/atk/rmc/ResourceManagerIntent;->ACTION_CANCEL_LANG_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/myscript/atk/rmc/ResourceManagerIntent;->EXTRA_LANG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/myscript/atk/rmc/RMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public launchDeleteByIntent(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/myscript/atk/rmc/RMLauncher;->TAG:Ljava/lang/String;

    const-string v2, "> launchDeleteByIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/myscript/atk/rmc/ResourceManagerIntent;->ACTION_DELETE_LANG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/myscript/atk/rmc/ResourceManagerIntent;->EXTRA_LANG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/myscript/atk/rmc/RMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public launchUpdateByIntent(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/myscript/atk/rmc/RMLauncher;->TAG:Ljava/lang/String;

    const-string v2, "> launchUpdateByIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/myscript/atk/rmc/ResourceManagerIntent;->ACTION_UPDATE_LANG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/myscript/atk/rmc/ResourceManagerIntent;->EXTRA_LANG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/myscript/atk/rmc/RMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
