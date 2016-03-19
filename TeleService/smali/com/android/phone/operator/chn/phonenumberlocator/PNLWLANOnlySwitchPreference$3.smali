.class Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$3;
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

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
