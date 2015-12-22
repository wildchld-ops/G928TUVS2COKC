.class Lcom/android/phone/callsettings/InCallSoundEQPreference$2;
.super Ljava/lang/Object;
.source "InCallSoundEQPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/InCallSoundEQPreference;->makeEQDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    const-string v2, "start hearingadjust"

    const/4 v3, 0x1

    # invokes: Lcom/android/phone/callsettings/InCallSoundEQPreference;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$100(Lcom/android/phone/callsettings/InCallSoundEQPreference;Ljava/lang/String;Z)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.hearingadjust.launch"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "InCallSoundEQPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
