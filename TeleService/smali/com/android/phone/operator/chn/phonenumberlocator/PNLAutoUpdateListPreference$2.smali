.class Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$2;
.super Ljava/lang/Object;
.source "PNLAutoUpdateListPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z
    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->access$502(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z
    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->access$502(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;Z)Z

    goto :goto_0
.end method
