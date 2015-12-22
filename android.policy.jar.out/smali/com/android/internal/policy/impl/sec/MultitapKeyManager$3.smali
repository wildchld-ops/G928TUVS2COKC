.class Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    # getter for: Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->access$300(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->access$302(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z

    :cond_0
    return-void
.end method
