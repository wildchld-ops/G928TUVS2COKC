.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const-string v3, "SecAutoRejectVideoCallList"

    const-string v4, "onClick logsButton"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "com.android.contacts"

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.dialer.interaction.InteractionRecentActivity"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "OPTION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    const v5, 0x7f0a0648

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getString(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$800(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;)V

    goto :goto_0
.end method
