.class Lcom/android/settings/GlobalRoamingSettings$2;
.super Landroid/os/Handler;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GlobalRoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GlobalRoamingSettings;->access$200()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a143b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/settings/GlobalRoamingSettings;->access$102(Lcom/android/settings/GlobalRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->toogleBackgroundDataToast(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/GlobalRoamingSettings;->access$900(Lcom/android/settings/GlobalRoamingSettings;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->toogleBackgroundDataToast(Z)V
    invoke-static {v1, v3}, Lcom/android/settings/GlobalRoamingSettings;->access$900(Lcom/android/settings/GlobalRoamingSettings;Z)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->curSimVer:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/GlobalRoamingSettings;->access$1000(Lcom/android/settings/GlobalRoamingSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm.sim.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GlobalRoamingSettings;->access$200()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a143e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDisableRoamingMultiIMSI()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonCountryUpdate:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/GlobalRoamingSettings;->access$400(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getSIMVersion()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/GlobalRoamingSettings;->access$300(Lcom/android/settings/GlobalRoamingSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v1, "GlobalRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after update simver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getSIMVersion()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/GlobalRoamingSettings;->access$300(Lcom/android/settings/GlobalRoamingSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/GlobalRoamingSettings;->access$100(Lcom/android/settings/GlobalRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/GlobalRoamingSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/settings/GlobalRoamingSettings;->access$102(Lcom/android/settings/GlobalRoamingSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GlobalRoamingSettings;->access$200()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a143a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$2;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->toogleDataRoamingToast(Z)V
    invoke-static {v1, v3}, Lcom/android/settings/GlobalRoamingSettings;->access$1100(Lcom/android/settings/GlobalRoamingSettings;Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
    .end sparse-switch
.end method
