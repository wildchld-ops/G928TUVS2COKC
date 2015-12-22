.class Lcom/android/phone/NetworkModeSpinner$11;
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

.field final synthetic val$settingsNetworkMode:I


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$11;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iput p2, p0, Lcom/android/phone/NetworkModeSpinner$11;->val$settingsNetworkMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$11;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mValues:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$1600(Lcom/android/phone/NetworkModeSpinner;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModeSpinner$11;->val$settingsNetworkMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$11;->this$0:Lcom/android/phone/NetworkModeSpinner;

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$11;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->summaryString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$1700(Lcom/android/phone/NetworkModeSpinner;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModeSpinner;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModeSpinner$11;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRebootDialog Invalid Index for NegativeButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
