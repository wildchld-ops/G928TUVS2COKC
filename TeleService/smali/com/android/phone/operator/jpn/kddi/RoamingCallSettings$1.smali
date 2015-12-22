.class Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$1;
.super Ljava/lang/Object;
.source "RoamingCallSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    # getter for: Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mErrAlertPopup.onClick() which:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$1;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method
