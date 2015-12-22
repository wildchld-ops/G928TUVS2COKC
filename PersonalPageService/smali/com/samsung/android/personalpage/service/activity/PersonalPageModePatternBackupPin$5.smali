.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;
.super Landroid/os/CountDownTimer;
.source "PersonalPageModePatternBackupPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mEtPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/EditText;

    move-result-object v1

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->normalInputFilter:[Landroid/text/InputFilter;
    invoke-static {}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$100()[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lock_out_time"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "PersonalPageModePatternBackupPin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock_out_time  onFinish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->lock_out_time:J
    invoke-static {v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$300(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    const/4 v4, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->mPasswordText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin$5;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    const v3, 0x7f05000d

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
