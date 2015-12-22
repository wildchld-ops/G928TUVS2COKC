.class Lcom/android/phone/callsettings/SecAutoRejectList$8;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$8;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const-string v2, "SecAutoRejectList"

    const-string v3, "onClick ContactsButton"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "com.android.contacts"

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$8;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$900()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$8;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$8;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const v4, 0x7f0a0648

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$800(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)V

    goto :goto_0
.end method
