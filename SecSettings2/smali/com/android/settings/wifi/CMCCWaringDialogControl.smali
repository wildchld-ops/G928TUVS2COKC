.class public Lcom/android/settings/wifi/CMCCWaringDialogControl;
.super Lcom/android/internal/app/AlertActivity;
.source "CMCCWaringDialogControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static mEnableWarningDialog:Landroid/app/AlertDialog;


# instance fields
.field private aplist_do_not_show_again:Z

.field private asktowlan_do_not_show_again:Z

.field private cmccap_do_not_show_again:Z

.field private donotshowagain:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsReceiverRegistered:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mallistcheckbox:Landroid/widget/CheckBox;

.field private malwaysaskcheckbox:Landroid/widget/CheckBox;

.field private mcmccapcheckbox:Landroid/widget/CheckBox;

.field private mfightmodecheckbox:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mEnableWarningDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mIsReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->donotshowagain:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->overridePendingTransition(II)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1000ba

    if-ne v1, v2, :cond_1

    const-string v1, "CMCCWaringDialogControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmcc_wlan checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "cmccap_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1000bd

    if-ne v1, v2, :cond_3

    const-string v1, "CMCCWaringDialogControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fight_mode checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tw_globalactions_dont_show_again"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tw_globalactions_dont_show_again"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1000bc

    if-ne v1, v2, :cond_4

    const-string v1, "CMCCWaringDialogControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alwaysask checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "asktowlan_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f1000bb

    if-ne v1, v2, :cond_0

    const-string v1, "CMCCWaringDialogControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlan_aplist checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "aplist_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "CMCCWaringDialogControl"

    const-string v1, "Selected button is Yes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f1000bc

    const v7, 0x7f1000bb

    const v6, 0x7f1000ba

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "CMCCWaringDialogControl"

    const-string v4, "CMCC Charge Waring DialogStarted"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "cmccap_do_not_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "aplist_do_not_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "asktowlan_do_not_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040042

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0ba9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0f01

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0baa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mcmccapcheckbox:Landroid/widget/CheckBox;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mallistcheckbox:Landroid/widget/CheckBox;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f1000bd

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f1000bd

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mcmccapcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mallistcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mcmccapcheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mallistcheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "tw_globalactions_dont_show_again"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->setupAlert()V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cmccap_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "aplist_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "asktowlan_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mcmccapcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mallistcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tw_globalactions_dont_show_again"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3
.end method
