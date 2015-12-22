.class Lcom/android/phone/NetworkModeSpinner$12;
.super Ljava/lang/Object;
.source "NetworkModeSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModeSpinner;->showRebootDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSpinner;

.field final synthetic val$buttonNetworkMode:I

.field final synthetic val$settingsNetworkMode:I


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$12;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iput p2, p0, Lcom/android/phone/NetworkModeSpinner$12;->val$buttonNetworkMode:I

    iput p3, p0, Lcom/android/phone/NetworkModeSpinner$12;->val$settingsNetworkMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$12;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkModeSpinner$12;->val$buttonNetworkMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$12;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v3, p0, Lcom/android/phone/NetworkModeSpinner$12;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->summaryString:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/NetworkModeSpinner;->access$1700(Lcom/android/phone/NetworkModeSpinner;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$12;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget v3, p0, Lcom/android/phone/NetworkModeSpinner$12;->val$buttonNetworkMode:I

    iget v4, p0, Lcom/android/phone/NetworkModeSpinner$12;->val$settingsNetworkMode:I

    # invokes: Lcom/android/phone/NetworkModeSpinner;->setPreferredNetworkMode(II)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/NetworkModeSpinner;->access$3500(Lcom/android/phone/NetworkModeSpinner;II)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_CONFIRM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$12;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$2000(Lcom/android/phone/NetworkModeSpinner;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$12;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showRebootDialog Invalid Index for PositiveButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
