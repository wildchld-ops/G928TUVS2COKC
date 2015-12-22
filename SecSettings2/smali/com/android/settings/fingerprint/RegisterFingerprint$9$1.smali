.class Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    :cond_1
    return-void
.end method
