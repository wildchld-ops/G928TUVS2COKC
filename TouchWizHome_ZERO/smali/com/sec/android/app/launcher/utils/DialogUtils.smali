.class public Lcom/sec/android/app/launcher/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAlertDlg(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->setTitle(I)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->setMessage(I)V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->setOkButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p4}, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->setCancelButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
