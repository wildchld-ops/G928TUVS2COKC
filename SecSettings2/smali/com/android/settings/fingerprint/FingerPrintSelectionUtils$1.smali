.class Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;
.super Ljava/lang/Object;
.source "FingerPrintSelectionUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->setActionBarView(Landroid/view/View;Landroid/view/Menu;)V
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->access$200(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
