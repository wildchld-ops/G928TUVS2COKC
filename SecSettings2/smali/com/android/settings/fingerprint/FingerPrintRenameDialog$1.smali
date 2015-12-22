.class Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;
.super Ljava/lang/Object;
.source "FingerPrintRenameDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    const-string v1, "[\\*/\\\\\\?:<>\\|\"]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mMaxLengthToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$000(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mMaxLengthToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$000(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/Toast;

    move-result-object v1

    const v2, 0x7f0a1118

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mMaxLengthToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$000(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method
