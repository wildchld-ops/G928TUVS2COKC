.class Lcom/android/phone/CarrierMatchAutoCSPDialogFragment$2;
.super Ljava/lang/Object;
.source "CarrierMatchAutoCSPDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment$2;->this$0:Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.CarrierMatchSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment$2;->this$0:Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;

    # getter for: Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;->access$000(Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarrierMatchAutoCSPDialogFragment"

    const-string v3, "Error starting CarrierMatchSetting activity"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
