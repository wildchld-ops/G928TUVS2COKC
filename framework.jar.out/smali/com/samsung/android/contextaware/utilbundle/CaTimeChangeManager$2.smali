.class Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;
.super Landroid/os/Handler;
.source "CaTimeChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1011

    if-ne v3, v4, :cond_1

    const-string v2, "context is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1012

    if-ne v3, v4, :cond_2

    const-string/jumbo v2, "intent is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1013

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_6

    move v0, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time Change, auto old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eq v0, v2, :cond_4

    :cond_3
    if-nez v0, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->notifyObservers()V
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$300(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    # setter for: Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->mAutoCheck:Z
    invoke-static {v2, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$202(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;Z)Z

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "settings not found"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
