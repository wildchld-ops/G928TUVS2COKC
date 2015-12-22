.class Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$8;
.super Ljava/lang/Object;
.source "LGTEditPhotoRingRejectScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->alertdialogSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$8;->this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "com.android.contacts"

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$8;->this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    # getter for: Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3}, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->access$000(Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$8;->this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    iget-object v4, v4, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_1
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$8;->this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v3}, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "EditAutoRejectScreen"

    const-string v4, "Fragment finished. We ignore alertdialogSearch."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v3, "tablet_l_osup"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "contacts.com.sec.android.app.dialertab.calllog.LogsSelectActivity"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v3, "OPTION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$8;->this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "EditAutoRejectScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.dialer.interaction.InteractionRecentActivity"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$8;->this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    invoke-virtual {v3}, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->isAdded()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "EditAutoRejectScreen"

    const-string v4, "Fragment finished. We ignore alertdialogSearch."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen$8;->this$0:Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;

    # getter for: Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->access$300()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/operator/kor/LGTEditPhotoRingRejectScreen;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
