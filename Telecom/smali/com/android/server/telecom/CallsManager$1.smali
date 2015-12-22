.class Lcom/android/server/telecom/CallsManager$1;
.super Ljava/lang/Object;
.source "CallsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/CallsManager;->onPostDialChar(Lcom/android/server/telecom/Call;C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/CallsManager;

.field final synthetic val$call:Lcom/android/server/telecom/Call;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/CallsManager$1;->this$0:Lcom/android/server/telecom/CallsManager;

    iput-object p2, p0, Lcom/android/server/telecom/CallsManager$1;->val$call:Lcom/android/server/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager$1;->this$0:Lcom/android/server/telecom/CallsManager;

    # getter for: Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;
    invoke-static {v0}, Lcom/android/server/telecom/CallsManager;->access$000(Lcom/android/server/telecom/CallsManager;)Lcom/android/server/telecom/DtmfLocalTonePlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager$1;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->stopTone(Lcom/android/server/telecom/Call;)V

    return-void
.end method
