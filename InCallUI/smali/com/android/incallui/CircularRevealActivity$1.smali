.class Lcom/android/incallui/CircularRevealActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CircularRevealActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CircularRevealActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CircularRevealActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/CircularRevealActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CircularRevealActivity$1;->this$0:Lcom/android/incallui/CircularRevealActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CircularRevealActivity$1;->this$0:Lcom/android/incallui/CircularRevealActivity;

    # invokes: Lcom/android/incallui/CircularRevealActivity;->clearDisplay()V
    invoke-static {v0}, Lcom/android/incallui/CircularRevealActivity;->access$000(Lcom/android/incallui/CircularRevealActivity;)V

    return-void
.end method
