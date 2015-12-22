.class Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$9;
.super Ljava/lang/Object;
.source "FingerPrintSelectionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteAllFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "FingerPrintSelectionUtils"

    const-string v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteFingerprintOperation(Z)Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$1500(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Z)Z

    return-void
.end method
