.class Lcom/android/phone/callsettings/SecPowerKeyEndPreference$1;
.super Ljava/lang/Object;
.source "SecPowerKeyEndPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecPowerKeyEndPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    # getter for: Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->access$000(Lcom/android/phone/callsettings/SecPowerKeyEndPreference;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecPowerKeyEndPreference$1;->this$0:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    # getter for: Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->access$000(Lcom/android/phone/callsettings/SecPowerKeyEndPreference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
