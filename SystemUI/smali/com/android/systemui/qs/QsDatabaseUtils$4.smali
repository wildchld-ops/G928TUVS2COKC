.class Lcom/android/systemui/qs/QsDatabaseUtils$4;
.super Landroid/content/BroadcastReceiver;
.source "QsDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QsDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QsDatabaseUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QsDatabaseUtils$4;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QsDatabaseUtils$4;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->updateWfcIcon()V
    invoke-static {v1}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$400(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    :cond_0
    const-string v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/qs/QsDatabaseUtils$4$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QsDatabaseUtils$4$1;-><init>(Lcom/android/systemui/qs/QsDatabaseUtils$4;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
