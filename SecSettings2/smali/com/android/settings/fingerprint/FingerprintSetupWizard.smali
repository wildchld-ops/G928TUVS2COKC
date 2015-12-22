.class public Lcom/android/settings/fingerprint/FingerprintSetupWizard;
.super Landroid/app/Activity;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final isEnableSurveyMode:Z


# instance fields
.field private btnArea:Landroid/view/View;

.field private button_transY:F

.field contentArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private descriptionArea:Landroid/view/View;

.field private descriptionText:Landroid/view/View;

.field private fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

.field private fingerprintPhoneImage:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private imageArea:Landroid/view/View;

.field private image_transY:F

.field private laterBtn:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private orientationScreen:I

.field private preOrientationScreen:I

.field private registerBtn:Landroid/view/View;

.field private titleArea:Landroid/view/View;

.field private titleText:Landroid/view/View;

.field private transX:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isEnableSurveyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->preOrientationScreen:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->orientationScreen:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->transX:F

    const/high16 v0, 0x44850000    # 1064.0f

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->image_transY:F

    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->button_transY:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Lcom/android/settings/fingerprint/VI/FingerprintIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private goFingerprintRegisterActivity()V
    .locals 4

    const-string v2, "FingerprintSetupWizard"

    const-string v3, "goFingerRegistActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "previousStage"

    const-string v3, "fingerprint_setup_wizard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "fingerIndex"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    const-string v2, "FingerprintSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertSurveyLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isEnableSurveyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isEnableSurveyMode:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private isVIEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onConfigurationChanged()V
    .locals 4

    const v3, 0x7f0400bd

    const v2, 0x7f0400bc

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->orientationScreen:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->preOrientationScreen:I

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->orientationScreen:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->orientationScreen:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->preOrientationScreen:I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->orientationScreen:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setContentView(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setContentView(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setContentView(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setContentView(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private resetAnimation()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "FingerprintSetupWizard"

    const-string v2, "resetAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->transX:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    invoke-virtual {v1, v3}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->image_transY:F

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->setTranslationY(F)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->button_transY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x400

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a10a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startAnimation()V
    .locals 13

    const/16 v12, 0x46

    const-wide/16 v10, 0x294

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v0, "FingerprintSetupWizard"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionText:Landroid/view/View;

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x21

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    invoke-static {v0, v4, v5, v10, v11}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromRight(Landroid/view/View;JJ)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    move-wide v8, v4

    invoke-static/range {v7 .. v12}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromBottom(Landroid/view/View;JJI)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSetupWizard$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    const-wide/16 v6, 0x190

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    move-wide v8, v4

    invoke-static/range {v7 .. v12}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromBottom(Landroid/view/View;JJI)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    move-wide v6, v10

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fingerprint/VI/AnimationHelper;->fadeAni(Landroid/view/View;FFJJI)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "FingerprintSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    const-string v0, "FingerprintSetupWizard"

    const-string v1, "notifyEnrollEnd() is called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "FingerprintSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_1

    const-string v0, "FingerprintSetupWizard"

    const-string v1, "Fingerprint registered successfully! Finish the FingerprintSetupWizard!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v1, "FingerprintSetupWizard"

    const-string v2, "skip fingerrpint setup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FPSW"

    const-string v2, "Later"

    invoke-direct {p0, v1, v2, v6, v7}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->finish()V

    goto :goto_0

    :pswitch_2
    const-string v1, "FingerprintSetupWizard"

    const-string v2, "Register fingerrpint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FPSW"

    const-string v2, "Register"

    invoke-direct {p0, v1, v2, v6, v7}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    const v2, 0x7f0a13c2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0a109b

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FingerprintSetupWizard"

    const-string v2, "notifyEnrollBegin() is failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->showSensorErrorDialog()V

    goto :goto_0

    :cond_1
    const-string v1, "FingerprintSetupWizard"

    const-string v2, "notifyEnrollBegin() is success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->goFingerprintRegisterActivity()V

    goto :goto_0

    :cond_2
    const-string v1, "FingerprintSetupWizard"

    const-string v2, "mFingerprintManager doesn\'t create"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->showSensorErrorDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1001db
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f1001d7

    const v6, 0x7f0a08bb

    const-string v3, "FingerprintSetupWizard"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    :cond_0
    iput-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->onConfigurationChanged()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.fingerprint.service"

    const-string v5, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.fingerprint.action.START_SERVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const v3, 0x7f100142

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    const v3, 0x7f1001d9

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionText:Landroid/view/View;

    const v3, 0x7f1001db

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a10fa

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f1001dd

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a10f9

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x7f1001d6

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->imageArea:Landroid/view/View;

    const v3, 0x7f100091

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleArea:Landroid/view/View;

    const v3, 0x7f1001da

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->btnArea:Landroid/view/View;

    const v3, 0x7f1001d8

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionArea:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isVIEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->titleText:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->descriptionText:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->contentArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->laterBtn:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->registerBtn:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f1001df

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v3, -0x1000000

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->setIndicatorTransparency()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->isVIEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->resetAnimation()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintPhoneImage:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.fingerprint_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintPhoneImage:Landroid/view/View;

    const v4, 0x7f020096

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintPhoneImage:Landroid/view/View;

    const v4, 0x7f020095

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "FingerprintSetupWizard"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
