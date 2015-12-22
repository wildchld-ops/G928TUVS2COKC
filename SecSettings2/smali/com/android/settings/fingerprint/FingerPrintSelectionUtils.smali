.class public Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;
.super Ljava/lang/Object;
.source "FingerPrintSelectionUtils.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

.field private static mItem_deregister:Landroid/view/MenuItem;

.field private static mItem_rename:Landroid/view/MenuItem;

.field private static mSalesCode:Ljava/lang/String;


# instance fields
.field private mDeleteAllDialog:Landroid/app/AlertDialog;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mEnrolledFingerStatus:I

.field private mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mMultiActionMode:Landroid/view/ActionMode;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedFingerprintTextView:Landroid/widget/TextView;

.field private mSettingsActionBarView:Landroid/view/View;

.field private select:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectionChecklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSalesCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mEnrolledFingerStatus:I

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    sput-object p1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->updateSelectionState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->finishSelectMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteSomeFingerPrint()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteFingerprintOperation(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->select:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiSelectActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiSelectActionBarView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500()Lcom/android/settings/fingerprint/FingerprintSettings;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$802(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_deregister:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$902(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    sput-object p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_rename:Landroid/view/MenuItem;

    return-object p0
.end method

.method private checkDeleteAllFingerprint()Z
    .locals 13

    const v9, 0x7f0a10cf

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->checkFingerprintUsageInPersona(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    move v2, v5

    :goto_0
    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->checkFingerprintUsageNQuality(Landroid/content/Context;)Z

    move-result v4

    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "personal_mode_lock_type"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    move v3, v5

    :goto_1
    if-nez v2, :cond_2

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return v5

    :cond_0
    move v2, v6

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v7, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_3

    if-eqz v3, :cond_7

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v7, 0x7f0a10ce

    invoke-virtual {v5, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v8, 0x7f0a10d7

    invoke-virtual {v7, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v5, v6

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v7, 0x7f0a10d6

    invoke-virtual {v5, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_4

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v5, v9}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_4

    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a10ec

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    const-string v9, "%s\n%s\n%s\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    sget-object v11, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a01b7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    sget-object v11, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a10d0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    const/4 v5, 0x2

    sget-object v11, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v11}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0b48

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3
.end method

.method private checkDeleteSomeFingerprint()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10d6

    invoke-virtual {v3, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v6, 0x7f0a10d7

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    goto :goto_1
.end method

.method private checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z
    .locals 9

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "2.0"

    const-string v7, "version"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "persona"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v6}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    iget v1, v5, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v1}, Landroid/os/PersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "FingerPrintSelectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "whole finger set using in KNOX was selected! PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_0
    const-string v5, "FingerPrintSelectionUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PersonaId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t use fingerprint index."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "FingerPrintSelectionUtils"

    const-string v7, "checkFingerprintIndexUsageInPersona: Unable to access PersonaManager."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v5, "FingerPrintSelectionUtils"

    const-string v7, "checkFingerprintIndexUsageInPersona: Any persona doesn\'t use fingerprint index."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_1
.end method

.method private checkFingerprintUsageInPersona(Landroid/content/Context;)Z
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "2.0"

    const-string v9, "version"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "persona"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v8}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    iget v2, v6, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v6

    if-ne v7, v6, :cond_0

    const-string v6, "FingerPrintSelectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PersonaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " use fingerprint as lock type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    :goto_1
    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "knox_finger_print_plus"

    invoke-static {v6, v9, v8, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_1

    const-string v6, "FingerPrintSelectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PersonaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " use fingerprint plus as lock type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_1

    :cond_1
    const-string v6, "FingerPrintSelectionUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PersonaId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t use fingerprint as lock type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "FingerPrintSelectionUtils"

    const-string v7, "isFingerprintUsedinPersonas: Unable to access PersonaManager."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v6, "FingerPrintSelectionUtils"

    const-string v7, "isFingerprintUsedinPersonas: Any persona doesn\'t use fingerprint as lock type."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    goto :goto_1
.end method

.method private checkFingerprintUsageNQuality(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const v5, 0x61000

    if-eq v2, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->getCurrentLockQuality(Landroid/content/Context;)I

    move-result v5

    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private clearselectionChecklist()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private deleteAllFingerPrint()V
    .locals 12

    const v11, 0x7f0a10d4

    const v10, 0x7f0a10d3

    const/high16 v9, 0x1040000

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->getNumOfCheckedList()I

    move-result v2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const-string v4, "FingerPrintSelectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAllFingerPrint : selectedCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x61000

    if-ne v1, v4, :cond_6

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->getFingerprintSupportingFeatures()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v2, v7, :cond_1

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10c8

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$7;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$7;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$6;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$6;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_1
    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10c9

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-ne v2, v7, :cond_4

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSalesCode:Ljava/lang/String;

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10cc

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10ca

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSalesCode:Ljava/lang/String;

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10cd

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10cb

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->getFingerprintSupportingFeatures()Z

    move-result v4

    if-eqz v4, :cond_9

    if-ne v2, v7, :cond_8

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10c6

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$9;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$9;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$8;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$8;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    :cond_7
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_8
    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10c7

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_9
    if-ne v2, v7, :cond_b

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10c4

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$11;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$11;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$10;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$10;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    :cond_a
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_b
    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v5, 0x7f0a10c5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method private deleteFingerprintOperation(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->resetFingerprintSupportingFeatures()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeAllEnrolledFingers()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->showSensorErrorDialog()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->showSensorErrorDialog()V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->showSensorErrorDialog()V

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_4
    :goto_0
    return v0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->finishSelectMode()V

    goto :goto_0
.end method

.method private deleteSomeFingerPrint()V
    .locals 7

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->getNumOfCheckedList()I

    move-result v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v4

    :goto_0
    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mEnrolledFingerStatus:I

    const-string v4, "FingerPrintSelectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteSomeFingerPrint(),  mEnrolledFingerCount is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selected item count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    if-lez v3, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :goto_2
    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->key:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    iget v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->index:I

    invoke-direct {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->removeFingerInKnox(Landroid/content/Context;I)Z

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    iget v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->index:I

    invoke-virtual {v5, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeEnrolledFinger(I)Z

    move-result v4

    and-int/2addr v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->showSensorErrorDialog()V

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->finishSelectMode()V

    goto :goto_3
.end method

.method private finishSelectMode()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->clearselectionChecklist()V

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->changeMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->changeMode(I)V

    goto :goto_0
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_secret_box"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_samsungaccount_confirmed"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private getNumOfCheckedList()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z
    .locals 11

    const/4 v8, 0x0

    const-string v7, "persona"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    if-nez v5, :cond_0

    const-string v7, "FingerPrintSelectionUtils"

    const-string v9, "isSelectedWholeFingersUsedKnox: Unable to access PersonaManager."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    :goto_0
    return v7

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->getNumOfCheckedList()I

    move-result v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    if-lez v6, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    :goto_2
    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v7, v7, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v7, v7, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    iget-object v7, v7, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->key:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v7, v7, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    iget v7, v7, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v5, p2}, Landroid/os/PersonaManager;->getFingerprintIndex(I)[I

    move-result-object v0

    if-nez v0, :cond_4

    const-string v7, "FingerPrintSelectionUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fingerIndexList cannot be null for PersonaId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_3
    array-length v7, v0

    if-ge v1, v7, :cond_7

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    aget v9, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v9, v7, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    array-length v7, v0

    if-ne v7, v4, :cond_8

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    move v7, v8

    goto/16 :goto_0
.end method

.method private isSharedDeviceEnabled()Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    const-string v2, "FingerPrintSelectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking shared device Enabled, isSharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private removeFingerInKnox(Landroid/content/Context;I)Z
    .locals 16

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_0

    const-string v13, "2.0"

    const-string v14, "version"

    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "persona"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersonaManager;

    if-eqz v8, :cond_c

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_0

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PersonaInfo;

    iget v7, v13, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v7}, Landroid/os/PersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v8, v7}, Landroid/os/PersonaManager;->getFingerprintIndex(I)[I

    move-result-object v2

    if-nez v2, :cond_1

    const-string v13, "FingerPrintSelectionUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fingerIndexList cannot be null for PersonaId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :cond_0
    :goto_1
    return v11

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    array-length v13, v2

    if-ge v5, v13, :cond_2

    aget v13, v2, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v0, p2

    if-ne v0, v13, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "FingerPrintSelectionUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fingerIndexList size cannot be 0 for PersonaId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-eq v13, v10, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    new-array v4, v13, [I

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v13, 0x1

    invoke-virtual {v8, v7, v13, v4}, Landroid/os/PersonaManager;->setFingerprintIndex(IZ[I)V

    invoke-virtual {v8, v7}, Landroid/os/PersonaManager;->getFingerprintHash(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_a

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getFingerprintId(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getFingerprintId(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v8, v7, v1}, Landroid/os/PersonaManager;->setFingerprintHash(ILjava/util/List;)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    const-string v13, "FingerPrintSelectionUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fingerHash size cannot be 0 for PersonaId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_6

    :cond_a
    const-string v13, "FingerPrintSelectionUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fingerHashList is null or size is 0 for PersonaId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    goto :goto_6

    :cond_c
    const-string v13, "FingerPrintSelectionUtils"

    const-string v14, "removeFingerInKnox: Unable to access PersonaManager."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_secret_box"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_fingerIndex"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_samsungaccount_confirmed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_lock_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_lock_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method protected static sendSurveryForRename()V
    .locals 4

    const-string v2, "TRUE"

    sget-object v3, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    const-string v3, "FPRN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "FingerPrintSelectionUtils"

    const-string v3, "renameFingerPrint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPRN, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a10a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$13;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$13;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$12;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$12;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addCheckedList(Landroid/preference/CheckBoxPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteFingerprint()Z
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->getNumOfCheckedList()I

    move-result v2

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v2, v6, :cond_4

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v6, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->isSharedDeviceEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1040af4

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->checkDeleteAllFingerprint()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->deleteAllFingerPrint()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->checkDeleteSomeFingerprint()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f0a10d4

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_5
    if-ne v2, v4, :cond_6

    sget-object v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v6, 0x7f0a10c4

    invoke-virtual {v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0a10d3

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$3;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$4;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$5;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_6
    sget-object v6, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v7, 0x7f0a10c5

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public finishSelectionUtils()V
    .locals 2

    const-string v0, "FingerPrintSelectionUtils"

    const-string v1, "Finish Actionbar including All Dialog in Fingerprint Selection View"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->finishSelectMode()V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-void
.end method

.method public onPositiveClick()V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->finishSelectMode()V

    goto :goto_0
.end method

.method public onResumeDialog()V
    .locals 0

    return-void
.end method

.method public renameFingerPrint()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mDeleteDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    :goto_2
    sget-object v3, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->key:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerprintSettings;->arFingerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;

    iget v2, v3, Lcom/android/settings/fingerprint/FingerprintSettings$FingerList;->index:I

    :cond_2
    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {v3, v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    sget-object v4, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->sendSurveryForRename()V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public resetActionBarView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSettingsActionBarView:Landroid/view/View;

    return-void
.end method

.method public setActionBarView(Landroid/view/View;Landroid/view/Menu;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSettingsActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSettingsActionBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSettingsActionBarView:Landroid/view/View;

    const v1, 0x7f1001d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSettingsActionBarView:Landroid/view/View;

    const v1, 0x7f1001d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSettingsActionBarView:Landroid/view/View;

    const v1, 0x7f1001d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    :cond_0
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_deregister:Landroid/view/MenuItem;

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_rename:Landroid/view/MenuItem;

    return-void
.end method

.method public startSelectionMode()V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;-><init>(Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$1;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;

    :cond_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintSelectionUtils$FingerPrintManagerActionSelectionModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->updateSelectionState()V

    return-void
.end method

.method public updateActionButtonState()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->getNumOfCheckedList()I

    move-result v0

    const-string v1, "FingerPrintSelectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActionButtonState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0e64

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mFingerprintSettings:Lcom/android/settings/fingerprint/FingerprintSettings;

    const v3, 0x7f0a111c

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    const v2, 0x7f0a111b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_deregister:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_deregister:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :pswitch_1
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_deregister:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_deregister:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :pswitch_2
    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_deregister:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_deregister:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->mItem_rename:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public updateBottombar(Z)V
    .locals 3

    const-string v0, "FingerPrintSelectionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBottombar : allcheck["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSelectionState()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->updateActionButtonState()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintSelectionUtils;->updateBottombar(Z)V

    return-void
.end method
