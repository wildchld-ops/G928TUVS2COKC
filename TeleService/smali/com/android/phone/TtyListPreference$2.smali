.class Lcom/android/phone/TtyListPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "TtyListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TtyListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TtyListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/TtyListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TtyListPreference$2;->this$0:Lcom/android/phone/TtyListPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/TtyListPreference$2;->this$0:Lcom/android/phone/TtyListPreference;

    # invokes: Lcom/android/phone/TtyListPreference;->updatePreferredTtyModeSummaryForVolte(I)V
    invoke-static {v2, v1}, Lcom/android/phone/TtyListPreference;->access$600(Lcom/android/phone/TtyListPreference;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/TtyListPreference$2;->this$0:Lcom/android/phone/TtyListPreference;

    # invokes: Lcom/android/phone/TtyListPreference;->updatePreferredTtyMode(I)V
    invoke-static {v2, v1}, Lcom/android/phone/TtyListPreference;->access$200(Lcom/android/phone/TtyListPreference;I)V

    goto :goto_0
.end method
