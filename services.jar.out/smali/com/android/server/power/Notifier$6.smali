.class Lcom/android/server/power/Notifier$6;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onSubScreenStateChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$id:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$6;->val$state:I

    iput p3, p0, Lcom/android/server/power/Notifier$6;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/android/server/power/Notifier$6;->val$state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "PowerManagerNotifier"

    const-string/jumbo v1, "sendBroadcast SubScreen On"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$900(Lcom/android/server/power/Notifier;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mSubScreenOnIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$800(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$000(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/Notifier$6;->val$id:I

    iget v2, p0, Lcom/android/server/power/Notifier$6;->val$state:I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->onScreenStateChanged(II)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/power/Notifier$6;->val$state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PowerManagerNotifier"

    const-string/jumbo v1, "sendBroadcast SubScreen Off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$900(Lcom/android/server/power/Notifier;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mSubScreenOffIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$1000(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
