.class Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$2;
.super Ljava/lang/Object;
.source "PNLWLANOnlySwitchPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->showChargesNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    # invokes: Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeChargesNotificationPrefrence()V
    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->access$100(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    # invokes: Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->userConfirmClick()V
    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->access$200(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
