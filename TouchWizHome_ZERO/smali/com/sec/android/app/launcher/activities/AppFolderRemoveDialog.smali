.class public Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;
.super Landroid/app/DialogFragment;
.source "AppFolderRemoveDialog.java"


# static fields
.field private static mCancelListener:Landroid/content/DialogInterface$OnCancelListener; = null

.field private static mListener:Landroid/content/DialogInterface$OnClickListener; = null

.field private static final sFragmentTag:Ljava/lang/String; = "AppFolderRemoveConfirm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;
    .locals 2

    sput-object p1, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    sput-object p2, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {p0}, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;-><init>()V

    const-string v1, "AppFolderRemoveConfirm"

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "AppFolderRemoveConfirm"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d009c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d009a

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0099

    sget-object v2, Lcom/sec/android/app/launcher/activities/AppFolderRemoveDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
