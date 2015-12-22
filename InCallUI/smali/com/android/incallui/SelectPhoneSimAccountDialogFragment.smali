.class public Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectPhoneSimAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field private static fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;


# instance fields
.field private mAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSelected:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static dismissDialog()V
    .locals 1

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    :cond_1
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2

    new-instance v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;-><init>()V

    sput-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    sget-object v0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->fragment:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    const-string v1, "selectAccount"

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "telecom"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    iput-object v4, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v4, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string v5, "tel"

    invoke-virtual {v4, v5}, Landroid/telecom/TelecomManager;->getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    new-instance v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;-><init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040141

    iget-object v6, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    const v4, 0x7f0d0388

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    return-object v0
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->dismissDialog()V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
