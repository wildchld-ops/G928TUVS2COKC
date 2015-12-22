.class Lcom/android/settings/nfc/PaymentBackend$1;
.super Landroid/content/BroadcastReceiver;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.nfc.cardemulation.UiccAccess.ACTION_RETRY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DCM"

    # getter for: Lcom/android/settings/nfc/PaymentBackend;->SALES_CODE:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/nfc/PaymentBackend;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    # getter for: Lcom/android/settings/nfc/PaymentBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;
    invoke-static {v2}, Lcom/android/settings/nfc/PaymentBackend;->access$200(Lcom/android/settings/nfc/PaymentBackend;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    # getter for: Lcom/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/settings/nfc/PaymentBackend;->access$100(Lcom/android/settings/nfc/PaymentBackend;)Landroid/content/ComponentName;

    move-result-object v3

    const-string v4, "payment"

    invoke-virtual {v2, v3, v4}, Landroid/nfc/cardemulation/CardEmulation;->registerService(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e8

    if-gt v2, v1, :cond_4

    const/16 v2, 0x1fa5

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x23c1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x244b

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    const v3, 0x7f0a1642

    invoke-virtual {v2, v3}, Lcom/android/settings/nfc/PaymentBackend;->showErrorDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    const v3, 0x7f0a1643

    invoke-virtual {v2, v3}, Lcom/android/settings/nfc/PaymentBackend;->showErrorDialog(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/nfc/PaymentBackend;->mAppName:Landroid/content/ComponentName;
    invoke-static {v2, v3}, Lcom/android/settings/nfc/PaymentBackend;->access$102(Lcom/android/settings/nfc/PaymentBackend;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    goto :goto_0
.end method
