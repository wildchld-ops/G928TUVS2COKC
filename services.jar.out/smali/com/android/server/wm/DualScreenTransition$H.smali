.class final Lcom/android/server/wm/DualScreenTransition$H;
.super Landroid/os/Handler;
.source "DualScreenTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DualScreenTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final DUALSCREEN_TRANSIT_SCREENSHOT_FREEZE_TIMEOUT:I = 0x1

.field public static final FREEZE_TIMEOUT_VAL:I = 0x1770


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DualScreenTransition;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DualScreenTransition;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/DualScreenTransition$H;->this$0:Lcom/android/server/wm/DualScreenTransition;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "DualScreenTransition"

    const-string v1, "No Valid Message To Handle"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "DualScreenTransition"

    const-string v1, "Exceeded Freeze timeout. Destroy layers.[DUALSCREEN_TRANSIT_SCREENSHOT_FREEZE_TIMEOUT]"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition$H;->this$0:Lcom/android/server/wm/DualScreenTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/DualScreenTransition;->kill()V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition$H;->this$0:Lcom/android/server/wm/DualScreenTransition;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DualScreenTransition;->setTransition(I)V

    iget-object v0, p0, Lcom/android/server/wm/DualScreenTransition$H;->this$0:Lcom/android/server/wm/DualScreenTransition;

    # getter for: Lcom/android/server/wm/DualScreenTransition;->mWindowAnimator:Lcom/android/server/wm/WindowAnimator;
    invoke-static {v0}, Lcom/android/server/wm/DualScreenTransition;->access$000(Lcom/android/server/wm/DualScreenTransition;)Lcom/android/server/wm/WindowAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->setDualScreenTransitionLocked(Lcom/android/server/wm/DualScreenTransition;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
