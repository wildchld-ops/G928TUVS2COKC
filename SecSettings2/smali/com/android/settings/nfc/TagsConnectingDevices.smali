.class public Lcom/android/settings/nfc/TagsConnectingDevices;
.super Landroid/app/Fragment;
.source "TagsConnectingDevices.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static androidBeamState:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/android/settings/nfc/TagsConnectingDevices$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$1;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/TagsConnectingDevices;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/TagsConnectingDevices;->setSwitchStatus(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/TagsConnectingDevices;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private makeAlertDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02cb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a02c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/nfc/TagsConnectingDevices$2;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$2;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/nfc/TagsConnectingDevices$3;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$3;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/nfc/TagsConnectingDevices$4;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$4;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setSwitchStatus(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mOldActivityTitle:Ljava/lang/CharSequence;

    const v2, 0x7f0a02c8

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_beam_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0401de

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v2, v2}, Lcom/android/settings/nfc/TagsConnectingDevices;->setSwitchStatus(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/nfc/TagsConnectingDevices;->setSwitchStatus(ZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/TagsConnectingDevices;->setSwitchStatus(ZZ)V

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "TagsConnectingDevices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    invoke-virtual {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_beam_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->makeAlertDialog()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_0
.end method
