.class public Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;
.super Landroid/app/DialogFragment;
.source "CarrierMatchAutoCSPDialogFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;)Landroid/app/Activity;
    .locals 1
    .param p0    # Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;

    iget-object v0, p0, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1    # Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040014

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0744

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0090

    new-instance v4, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment$2;-><init>(Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a008e

    new-instance v4, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment$1;-><init>(Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
