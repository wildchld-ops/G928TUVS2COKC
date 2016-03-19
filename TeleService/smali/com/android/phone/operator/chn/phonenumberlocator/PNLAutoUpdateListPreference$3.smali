.class Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;
.super Ljava/lang/Object;
.source "PNLAutoUpdateListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->showChargesNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    # invokes: Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeChargesNotificationPrefrence()V
    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->access$600(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mTempDialogEntryIndex:I
    invoke-static {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->access$200(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)I

    move-result v1

    # setter for: Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I
    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->access$402(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;I)I

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->access$100(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)Landroid/content/DialogInterface;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->access$100(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
