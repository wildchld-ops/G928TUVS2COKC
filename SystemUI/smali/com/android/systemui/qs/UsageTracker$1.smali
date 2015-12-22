.class Lcom/android/systemui/qs/UsageTracker$1;
.super Ljava/lang/Object;
.source "UsageTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/UsageTracker;->showResetConfirmation(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/UsageTracker;

.field final synthetic val$onConfirmed:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/UsageTracker;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/UsageTracker$1;->this$0:Lcom/android/systemui/qs/UsageTracker;

    iput-object p2, p0, Lcom/android/systemui/qs/UsageTracker$1;->val$onConfirmed:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/UsageTracker$1;->this$0:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->reset()V

    iget-object v0, p0, Lcom/android/systemui/qs/UsageTracker$1;->val$onConfirmed:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/UsageTracker$1;->val$onConfirmed:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
