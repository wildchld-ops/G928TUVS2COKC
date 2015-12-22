.class Lcom/android/server/telecom/ErrorDialogActivity$4;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "ErrorDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/ErrorDialogActivity;->registerCoverStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/ErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ErrorDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ErrorDialogActivity$4;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3

    # getter for: Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/ErrorDialogActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCoverStateChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$4;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    # invokes: Lcom/android/server/telecom/ErrorDialogActivity;->finishActivityWhenAirplanemodeOff()V
    invoke-static {v0}, Lcom/android/server/telecom/ErrorDialogActivity;->access$400(Lcom/android/server/telecom/ErrorDialogActivity;)V

    return-void
.end method
