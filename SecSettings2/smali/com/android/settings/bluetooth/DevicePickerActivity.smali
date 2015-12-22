.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothCallback;


# static fields
.field public static canLaunchQuickBtView:Z

.field public static mMyPlacesCalled:Z


# instance fields
.field private Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

.field private Helpscanbroadcast:Landroid/content/BroadcastReceiver;

.field fromHelp:Z

.field private mActivityResultDone:Z

.field private mBTEnableDisplayed:Z

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mScanBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/DevicePickerActivity;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object p1
.end method

.method private initialize()V
    .locals 6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a022f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a00b6

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0166

    new-instance v5, Lcom/android/settings/bluetooth/DevicePickerActivity$5;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$5;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040027

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity$6;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$7;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity$7;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public ScanBtnStateUpdate(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0a080e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

    const-string v0, "DevicePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged :: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "DevicePickerActivity"

    const-string v5, "onCreate :: Intent.getAction() is return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "DevicePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate :: getAction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.samsung.settings.bluetooth.CheckBluetoothLEStateActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sput-boolean v8, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->initialize()V

    :goto_2
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v4, :cond_5

    const-string v4, "DevicePickerActivity"

    const-string v5, "Bluetooth is not supported on this device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v4, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput-boolean v7, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v4, 0x7f040027

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->setContentView(I)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "fromHelp"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    if-eqz v4, :cond_6

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Helpscanbroadcast:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Helpscanbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v8, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    goto/16 :goto_0

    :cond_6
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$2;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Helpscanbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onDestroy of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onPause of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    return-void
.end method

.method public onPostResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    const-string v1, "DevicePickerActivity"

    const-string v2, "onPostResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$3;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;II)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput-boolean v4, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    const-string v1, "DevicePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside onResume with mBTEnableDisplayed= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public showHelpDialog(II)V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v4, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    const/4 v2, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v5, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f100008

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_1

    const v4, 0x7f1001f1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    const v4, 0x7f100003

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$4;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$4;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    :cond_4
    return-void
.end method
