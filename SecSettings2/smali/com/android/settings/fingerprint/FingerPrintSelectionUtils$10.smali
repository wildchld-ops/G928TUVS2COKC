.class Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$10;
.super Ljava/lang/Object;
.source "FingerPrintSelectionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$10;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$10;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$1402(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
