.class public Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/utils/DialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMessage:I

.field private mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d007d

    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d002a

    iget-object v2, p0, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public setCancelButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setMessage(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->mMessage:I

    return-void
.end method

.method public setOkButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/utils/DialogUtils$AlertDialogFragment;->mTitle:I

    return-void
.end method
