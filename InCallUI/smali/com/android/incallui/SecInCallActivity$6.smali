.class Lcom/android/incallui/SecInCallActivity$6;
.super Ljava/lang/Object;
.source "SecInCallActivity.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecInCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$6;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity$6;->this$0:Lcom/android/incallui/SecInCallActivity;

    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    # invokes: Lcom/android/incallui/SecInCallActivity;->onWindowRotationChanged(IZ)V
    invoke-static {v1, v2, v3}, Lcom/android/incallui/SecInCallActivity;->access$400(Lcom/android/incallui/SecInCallActivity;IZ)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
