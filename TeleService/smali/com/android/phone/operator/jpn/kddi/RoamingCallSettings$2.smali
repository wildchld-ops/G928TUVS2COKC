.class Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$2;
.super Ljava/lang/Object;
.source "RoamingCallSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->showAlertDialogActiveVoiceMailbox()V
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

    iput-object p1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$2;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings$2;->this$0:Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;

    const-string v1, "+819044441418"

    # invokes: Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->procDialCommand(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;->access$100(Lcom/android/phone/operator/jpn/kddi/RoamingCallSettings;Ljava/lang/String;)V

    return-void
.end method
