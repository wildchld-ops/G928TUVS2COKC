.class public Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;
.super Landroid/app/Activity;
.source "ScreenshotDeleteActivity.java"


# static fields
.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final TAG:Ljava/lang/String; = "ScreenshotDeleteActivity"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeleteFile:Ljava/io/File;

.field private mImageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private doFinish()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0481

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x315

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "FilePath"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "ScreenshotDeleteActivity"

    const-string v6, "onCreate : mImageFilePath is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->doFinish()V

    :goto_0
    return-void

    :cond_0
    const-string v5, "ScreenshotDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "currentUserHandle"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mDeleteFile:Ljava/io/File;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mDeleteFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ScreenshotDeleteActivity"

    const-string v6, "onCreate : Item is not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->doFinish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10302d1

    const-string v5, "ro.build.scafe.cream"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v5, "white"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v4, 0x10302d2

    :cond_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d0482

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104047a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;Landroid/os/UserHandle;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v5, "android.intent.action.DELETE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_3
    const-string v5, "ScreenshotDeleteActivity"

    const-string v6, "Fail : Invaild intent action"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "screenshot"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
