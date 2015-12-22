.class Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;
.super Lcom/android/internal/policy/impl/WindowOrientationListener;
.source "SecInCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecInCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InCallOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecInCallActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;->this$0:Lcom/android/incallui/SecInCallActivity;

    # getter for: Lcom/android/incallui/SecInCallActivity;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/incallui/SecInCallActivity;->access$800(Lcom/android/incallui/SecInCallActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$InCallOrientationListener;->this$0:Lcom/android/incallui/SecInCallActivity;

    const/4 v1, 0x1

    # invokes: Lcom/android/incallui/SecInCallActivity;->onWindowRotationChanged(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/incallui/SecInCallActivity;->access$400(Lcom/android/incallui/SecInCallActivity;IZ)V

    return-void
.end method
