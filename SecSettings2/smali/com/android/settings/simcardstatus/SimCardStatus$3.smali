.class Lcom/android/settings/simcardstatus/SimCardStatus$3;
.super Ljava/lang/Object;
.source "SimCardStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/simcardstatus/SimCardStatus;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simcardstatus/SimCardStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/simcardstatus/SimCardStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/simcardstatus/SimCardStatus$3;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v1, "SimCardStatus"

    const-string v2, "Download policy file"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus$3;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    # getter for: Lcom/android/settings/simcardstatus/SimCardStatus;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$100(Lcom/android/settings/simcardstatus/SimCardStatus;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->getInstance(Landroid/content/Context;)Lcom/android/settings/simcardstatus/SamsungRilConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/simcardstatus/SimCardStatus$3;->this$0:Lcom/android/settings/simcardstatus/SimCardStatus;

    # getter for: Lcom/android/settings/simcardstatus/SimCardStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/android/settings/simcardstatus/SimCardStatus;->access$200(Lcom/android/settings/simcardstatus/SimCardStatus;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/simcardstatus/SamsungRilConnector;->setBlob([B)V

    return-void
.end method
