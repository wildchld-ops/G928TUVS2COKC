.class Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$3;
.super Ljava/lang/Object;
.source "FingerPrintSelectionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteFingerprint()Z
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteSomeFingerPrint()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$1200(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    return-void
.end method
