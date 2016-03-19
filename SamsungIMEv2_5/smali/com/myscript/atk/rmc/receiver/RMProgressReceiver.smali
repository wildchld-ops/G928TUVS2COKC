.class public Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RMProgressReceiver.java"


# instance fields
.field private mLanguagePacksManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;


# direct methods
.method public constructor <init>(Lcom/myscript/atk/rmc/VOLanguagePackManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;->mLanguagePacksManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object v2, Lcom/myscript/atk/rmc/ResourceManagerIntent;->EXTRA_LANG:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/myscript/atk/rmc/ResourceManagerIntent;->EXTRA_PROGRESS:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/myscript/atk/rmc/receiver/RMProgressReceiver;->mLanguagePacksManager:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-virtual {v2, v0, v1}, Lcom/myscript/atk/rmc/VOLanguagePackManager;->setProgressLanguage(Ljava/lang/String;I)V

    return-void
.end method
