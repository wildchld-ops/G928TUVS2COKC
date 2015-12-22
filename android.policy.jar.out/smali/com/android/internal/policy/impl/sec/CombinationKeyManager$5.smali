.class Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    # getter for: Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CombinationKeyManager"

    const-string v3, "mFactoryTestChordLongPress : startActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.factory"

    const-string v3, "com.sec.factory.app.factorytest.FactoryTestMain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CombinationKeyManager"

    const-string v3, "No activity to launch factorytestmain."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
