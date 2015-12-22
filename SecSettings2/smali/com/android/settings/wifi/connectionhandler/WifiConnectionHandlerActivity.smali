.class public Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiConnectionHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBeforeValue:Landroid/content/SharedPreferences;

.field private mDoNotShow:Landroid/content/SharedPreferences;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsReceiverRegistered:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mcheck:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    new-instance v0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;-><init>(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public OnOffData(Z)V
    .locals 3

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    const-string v1, "WifiConnectionHandlerActivity"

    const-string v2, "The data service will be enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "WifiConnectionHandlerActivity"

    const-string v2, "ConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    const-string v0, "WifiConnectionHandlerActivity"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "WifiConnectionHandlerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not Show again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "connhan_do_not_show"

    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "Selected button is Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "donotshow checked. connhan_value : BUTTON_CONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "connhan_value"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->OnOffData(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->finish()V

    goto :goto_0

    :pswitch_1
    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "Selected button is Disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "donotshow checked. connhan_value : BUTTON_DISCONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "connhan_value"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->OnOffData(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f100165

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    const-string v4, "connhan_do_not_show"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    const-string v4, "connhan_value"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_1

    const-string v3, "WifiConnectionHandlerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const-string v3, "WifiConnectionHandlerActivity"

    const-string v4, "Setted button is Connect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->OnOffData(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v3, "WifiConnectionHandlerActivity"

    const-string v4, "Setted button is Disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->OnOffData(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->finish()V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v7, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040239

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1261

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1263

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1264

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1262

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->setupAlert()V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    return-void
.end method
