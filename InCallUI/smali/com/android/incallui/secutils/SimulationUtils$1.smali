.class Lcom/android/incallui/secutils/SimulationUtils$1;
.super Ljava/lang/Object;
.source "SimulationUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secutils/SimulationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secutils/SimulationUtils;


# direct methods
.method constructor <init>(Lcom/android/incallui/secutils/SimulationUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secutils/SimulationUtils$1;->this$0:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils$1;->this$0:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/SimulationUtils;->toggleButton()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils$1;->this$0:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/SimulationUtils;->modifyReuqestToVideo()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils$1;->this$0:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/SimulationUtils;->modifyReuqestToVSTx()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils$1;->this$0:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/SimulationUtils;->transitToVSRx()V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils$1;->this$0:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/SimulationUtils;->transitToVSTx()V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecModifyCallProcessor;->acceptModifyCall()V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils$1;->this$0:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/SimulationUtils;->showConferenceCallManager()V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils$1;->this$0:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/SimulationUtils;->modifyReceiveVideo()V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/incallui/secutils/SimulationUtils$1;->this$0:Lcom/android/incallui/secutils/SimulationUtils;

    invoke-virtual {v1}, Lcom/android/incallui/secutils/SimulationUtils;->modifyReceiveVSRx()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100347
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
