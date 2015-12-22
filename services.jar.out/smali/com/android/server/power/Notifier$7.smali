.class Lcom/android/server/power/Notifier$7;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onSubTspLpmNeed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    iput-boolean p2, p0, Lcom/android/server/power/Notifier$7;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$700(Lcom/android/server/power/Notifier;)Landroid/hardware/input/InputManagerInternal;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier$7;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerInternal;->setSubTspLpmMode(Z)V

    return-void
.end method
