.class public Lcom/sec/android/app/launcher/activities/KeyboardDialog;
.super Landroid/app/DialogFragment;
.source "KeyboardDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;
    }
.end annotation


# static fields
.field public static final CREATE_REQ_SRC_INVALID:I = 0x0

.field private static final CREATE_REQ_SRC_KEY:Ljava/lang/String; = "FOLDER_CREATE_REQ_SRC_KEY"

.field private static final TITLE_KEY:Ljava/lang/String; = "TITLE_KEY"

.field private static final sFragmentTag:Ljava/lang/String;


# instance fields
.field mDefaultText:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field mListener:Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;

.field mTitle:Ljava/lang/String;

.field private mWho:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->sFragmentTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mWho:I

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mListener:Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mDefaultText:Ljava/lang/String;

    return-void
.end method

.method public static createAndShow(Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;-><init>()V

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->init(Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->sFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2

    sget-object v1, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->sFragmentTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private init(Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mListener:Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mWho:I

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mDefaultText:Ljava/lang/String;

    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->sFragmentTag:Ljava/lang/String;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mListener:Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;->confirmed(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mListener:Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/activities/KeyboardDialog$Listener;->cancelled()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000f

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0b005f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    const v6, 0x7f0d002c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mDefaultText:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mDefaultText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mDefaultText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iput-object v7, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mDefaultText:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v5, "FOLDER_CREATE_REQ_SRC_KEY"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mWho:I

    const-string v1, ""

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v5, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mWho:I

    if-nez v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d007d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d002a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x25

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->dismiss()V

    :cond_2
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "FOLDER_CREATE_REQ_SRC_KEY"

    iget v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mWho:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TITLE_KEY"

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->getShowsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/KeyboardDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
