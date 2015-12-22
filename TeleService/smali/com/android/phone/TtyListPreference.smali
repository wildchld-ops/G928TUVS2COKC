.class public Lcom/android/phone/TtyListPreference;
.super Landroid/preference/ListPreference;
.source "TtyListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TtyListPreference$DownloadListAdapter;
    }
.end annotation


# static fields
.field private static disableListItem:Z


# instance fields
.field builder:Landroid/app/AlertDialog$Builder;

.field private context:Landroid/content/Context;

.field private mAdapter:Lcom/android/phone/TtyListPreference$DownloadListAdapter;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private prvTtyMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/TtyListPreference;->disableListItem:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/phone/TtyListPreference;->mAdapter:Lcom/android/phone/TtyListPreference$DownloadListAdapter;

    iput-object v0, p0, Lcom/android/phone/TtyListPreference;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/phone/TtyListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/phone/TtyListPreference$2;-><init>(Lcom/android/phone/TtyListPreference;)V

    iput-object v0, p0, Lcom/android/phone/TtyListPreference;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/TtyListPreference;)Lcom/android/phone/TtyListPreference$DownloadListAdapter;
    .locals 1
    .param p0    # Lcom/android/phone/TtyListPreference;

    iget-object v0, p0, Lcom/android/phone/TtyListPreference;->mAdapter:Lcom/android/phone/TtyListPreference$DownloadListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/TtyListPreference;I)V
    .locals 0
    .param p0    # Lcom/android/phone/TtyListPreference;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/TtyListPreference;->createDialogTty(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/TtyListPreference;I)V
    .locals 0
    .param p0    # Lcom/android/phone/TtyListPreference;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/TtyListPreference;->updatePreferredTtyMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/TtyListPreference;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/TtyListPreference;

    iget-object v0, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/TtyListPreference;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/phone/TtyListPreference;

    iget-object v0, p0, Lcom/android/phone/TtyListPreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/TtyListPreference;->disableListItem:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/TtyListPreference;I)V
    .locals 0
    .param p0    # Lcom/android/phone/TtyListPreference;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/TtyListPreference;->updatePreferredTtyModeSummaryForVolte(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/TtyListPreference;)I
    .locals 1
    .param p0    # Lcom/android/phone/TtyListPreference;

    iget v0, p0, Lcom/android/phone/TtyListPreference;->prvTtyMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/TtyListPreference;I)I
    .locals 0
    .param p0    # Lcom/android/phone/TtyListPreference;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/TtyListPreference;->prvTtyMode:I

    return p1
.end method

.method private changeTtyButton(I)I
    .locals 2
    .param p1    # I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a05bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a05bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a05be

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a05bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a05c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a05bf

    goto :goto_0
.end method

.method private createDialogTty(I)V
    .locals 8
    .param p1    # I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f0400bf

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f1001f3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/android/phone/TtyListPreference;->changeTtyButton(I)I

    move-result v6

    new-instance v7, Lcom/android/phone/TtyListPreference$3;

    invoke-direct {v7, p0, v0, v1}, Lcom/android/phone/TtyListPreference$3;-><init>(Lcom/android/phone/TtyListPreference;Landroid/widget/CheckBox;I)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/phone/TtyListPreference$4;

    invoke-direct {v7, p0}, Lcom/android/phone/TtyListPreference$4;-><init>(Lcom/android/phone/TtyListPreference;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/TtyListPreference;->shouldShowTtyTips(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/TtyListPreference;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/TtyListPreference;->updatePreferredTtyModeSummaryForVolte(I)V

    iget-object v5, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_tty_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static neverShowTtyTipsAgain(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/phone/TtyListPreference;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "swipe_popup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static shouldShowTtyTips(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/phone/TtyListPreference;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "swipe_popup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updatePreferredTtyMode(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0900b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v3}, Lcom/android/phone/TtyListPreference;->setEnabled(Z)V

    aget-object v2, v1, v3

    invoke-virtual {p0, v2}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    aget-object v2, v1, p1

    invoke-virtual {p0, v2}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferredTtyModeSummaryForVolte(I)V
    .locals 3
    .param p1    # I

    iget-object v2, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0900b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    const v2, 0x7f0a05c1

    invoke-virtual {p0, v2}, Lcom/android/phone/TtyListPreference;->setSummary(I)V

    :goto_0
    return-void

    :pswitch_0
    aget-object v2, v1, p1

    invoke-virtual {p0, v2}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x0

    const v3, 0x7f0a01ab

    const-string v2, "button_tty_mode_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/TtyListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/TtyListPreference;->setTitle(I)V

    invoke-virtual {p0, v3}, Lcom/android/phone/TtyListPreference;->setDialogTitle(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/TtyListPreference;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/TtyListPreference;->prvTtyMode:I

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/TtyListPreference;->updatePreferredTtyModeSummaryForVolte(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/TtyListPreference;->updatePreferredTtyMode(I)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1    # Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/TtyListPreference;->mAdapter:Lcom/android/phone/TtyListPreference$DownloadListAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v0, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_2

    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/phone/TtyListPreference;->disableListItem:Z

    :goto_0
    iget-object v7, p0, Lcom/android/phone/TtyListPreference;->mAdapter:Lcom/android/phone/TtyListPreference$DownloadListAdapter;

    if-nez v7, :cond_0

    new-instance v7, Lcom/android/phone/TtyListPreference$DownloadListAdapter;

    iget-object v8, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/phone/TtyListPreference$DownloadListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/TtyListPreference;->mAdapter:Lcom/android/phone/TtyListPreference$DownloadListAdapter;

    :cond_0
    iget-object v7, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_tty_mode"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v5}, Lcom/android/phone/TtyListPreference;->updatePreferredTtyModeSummaryForVolte(I)V

    :goto_1
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/TtyListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/phone/TtyListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v7, Lcom/android/phone/TtyListPreference$1;

    invoke-direct {v7, p0}, Lcom/android/phone/TtyListPreference$1;-><init>(Lcom/android/phone/TtyListPreference;)V

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void

    :cond_2
    sput-boolean v9, Lcom/android/phone/TtyListPreference;->disableListItem:Z

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/phone/TtyListPreference;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0900b0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    aget-object v7, v6, v5

    invoke-virtual {p0, v7}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
