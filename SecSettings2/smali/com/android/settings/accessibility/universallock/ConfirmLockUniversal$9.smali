.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockUniversal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1502(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;I)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    sget-object v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlock:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    # invokes: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    const v3, 0x7f0a0778

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
