.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->createDialogTty(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

.field final synthetic val$check:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currTtyMode:I


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Landroid/widget/CheckBox;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iput-object p2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->val$check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->val$currTtyMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->neverShowTtyTipsAgain(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->val$currTtyMode:I

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummaryForVolte(I)V
    invoke-static {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$2200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$2300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->val$currTtyMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;
    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$2000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TtyListPreference;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;->val$currTtyMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
