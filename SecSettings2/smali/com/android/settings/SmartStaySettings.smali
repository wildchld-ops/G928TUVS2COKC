.class public Lcom/android/settings/SmartStaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/SmartStaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SmartStaySettings$1;-><init>(Lcom/android/settings/SmartStaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 10

    const v9, 0x7f0a1018

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->dismissAllDialog()V

    const v4, 0x7f0a0e92

    invoke-virtual {p0, v4}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0a0fd3

    invoke-virtual {p0, v4}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0a1019

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/SmartStaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/SmartStaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a079c

    new-instance v6, Lcom/android/settings/SmartStaySettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/SmartStaySettings$4;-><init>(Lcom/android/settings/SmartStaySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/SmartStaySettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/SmartStaySettings$5;-><init>(Lcom/android/settings/SmartStaySettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const-string v4, "TalkBack"

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x7f0a09bb

    invoke-virtual {p0, v4}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/SmartStaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private maketurnOffUniversalPopup()V
    .locals 9

    const v5, 0x7f0a0fd3

    const v8, 0x7f0a08db

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->dismissAllDialog()V

    invoke-virtual {p0, v5}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a1019

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SmartStaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a09b1

    invoke-virtual {p0, v3}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v8}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {p0, v8}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a079c

    new-instance v5, Lcom/android/settings/SmartStaySettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings/SmartStaySettings$6;-><init>(Lcom/android/settings/SmartStaySettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/SmartStaySettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/SmartStaySettings$7;-><init>(Lcom/android/settings/SmartStaySettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->makeTalkBackDisablePopup()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->maketurnOffUniversalPopup()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/SmartStaySettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SmartStaySettings$2;-><init>(Lcom/android/settings/SmartStaySettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v4, 0x7f0401d5

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f100418

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v4, 0x7f100415

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    return-object v3
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->makeTalkBackDisablePopup()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->maketurnOffUniversalPopup()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/SmartStaySettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/SmartStaySettings$3;-><init>(Lcom/android/settings/SmartStaySettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
