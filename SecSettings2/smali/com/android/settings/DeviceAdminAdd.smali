.class public Lcom/android/settings/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field final mActivePolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field final mAddingPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddingProfileOwner:Z

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminWarning:Landroid/widget/TextView;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCancelButton:Landroid/widget/Button;

.field mCurSysAppOpMode:I

.field mCurToastAppOpMode:I

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mHandler:Landroid/os/Handler;

.field mProfileOwnerName:Ljava/lang/String;

.field mProfileOwnerWarning:Landroid/widget/TextView;

.field mRefreshing:Z

.field mWaitingForRemoveMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addAndFinish()V
    .locals 6

    const/4 v5, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to activate admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    goto :goto_1
.end method

.method continueRemoveAction(Ljava/lang/CharSequence;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method getEllipsizedLines()I
    .locals 3

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x5

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getActionBar()Landroid/app/ActionBar;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getActionBar()Landroid/app/ActionBar;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getActionBar()Landroid/app/ActionBar;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    new-instance v22, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    const-string v22, "enterprise_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v22, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string v22, "appops"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/AppOpsManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getFlags()I

    move-result v22

    const/high16 v23, 0x10000000

    and-int v22, v22, v23

    if-eqz v22, :cond_1

    const-string v22, "DeviceAdminAdd"

    const-string v23, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/content/ComponentName;

    if-nez v21, :cond_2

    const-string v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No component specified in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_5

    const-string v22, "android.app.action.SET_PROFILE_OWNER"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    :cond_3
    const-string v22, "DeviceAdminAdd"

    const-string v23, "Unknown or incorrect caller"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    :cond_4
    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-nez v22, :cond_5

    const-string v22, "DeviceAdminAdd"

    const-string v23, "Cannot set a non-system app as a profile owner"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    const-string v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot find the package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    :try_start_1
    new-instance v22, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v9

    const-string v22, "DeviceAdminAdd"

    const-string v23, "Skipping proxy"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v9

    const-string v22, "DeviceAdminAdd"

    const-string v23, "Skipping proxy"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    const/16 v22, 0x80

    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v22

    if-nez v22, :cond_c

    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v23, 0x8000

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_a

    const/4 v7, 0x0

    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v7, :cond_8

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    :try_start_3
    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v8, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    const/4 v10, 0x1

    :cond_8
    :goto_5
    if-nez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    const-string v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Request to add invalid device admin: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    :catch_3
    move-exception v9

    const-string v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to retrieve device policy "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    goto/16 :goto_2

    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    goto/16 :goto_3

    :catch_4
    move-exception v9

    const-string v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Bad "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_5
    move-exception v9

    const-string v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Bad "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    :cond_c
    new-instance v20, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v20 .. v20}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_d

    :try_start_4
    new-instance v22, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_d
    const-string v22, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v22

    if-nez v22, :cond_f

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    move/from16 v22, v0

    if-nez v22, :cond_10

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    :catch_6
    move-exception v9

    const-string v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to retrieve device policy "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    :catch_7
    move-exception v9

    const-string v22, "DeviceAdminAdd"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to retrieve device policy "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v22

    if-nez v22, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->addAndFinish()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    const v22, 0x7f040087

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setContentView(I)V

    const v22, 0x7f100151

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    const v22, 0x7f100152

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    const v22, 0x7f100154

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const v22, 0x7f100153

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    const v22, 0x7f100156

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    const v22, 0x7f100155

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/DeviceAdminAdd$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$1;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    const v22, 0x7f100157

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v22, 0x7f100158

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    const v22, 0x7f1000a1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/DeviceAdminAdd$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$2;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v22, 0x7f10015b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings/DeviceAdminAdd$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$3;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    :pswitch_0
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a07c0

    new-instance v3, Lcom/android/settings/DeviceAdminAdd$4;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceAdminAdd$4;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a07c1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x18

    iget v4, p0, Lcom/android/settings/DeviceAdminAdd;->mCurSysAppOpMode:I

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2d

    iget v4, p0, Lcom/android/settings/DeviceAdminAdd;->mCurToastAppOpMode:I

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    const/16 v5, 0x2d

    const/16 v4, 0x18

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->updateInterface()V

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/DeviceAdminAdd;->mCurSysAppOpMode:I

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/DeviceAdminAdd;->mCurToastAppOpMode:I

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v1, v0, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v1, v0, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_3

    const v1, 0x108034a

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0xf

    goto :goto_2

    :cond_3
    const v1, 0x1080349

    goto :goto_3
.end method

.method updateInterface()V
    .locals 12

    const/16 v9, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v6, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget-object v7, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v8, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v5, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    invoke-direct {v2, v6, v7, v8, v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    iget v5, v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f0a0b9a

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a0b8d

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f0a0b8e

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iput-boolean v10, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    :goto_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v6, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget-object v7, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v8, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v5, v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    invoke-direct {v2, v6, v7, v8, v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    iget v5, v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f0a0b99

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v5, :cond_6

    const v5, 0x7f0a0b9b

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f0a0b96

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    goto/16 :goto_3

    :cond_6
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_7

    const v5, 0x7f0a0b98

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    const v5, 0x7f0a0b97

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
